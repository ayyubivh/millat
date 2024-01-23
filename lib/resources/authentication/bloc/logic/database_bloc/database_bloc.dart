import 'dart:io';

import 'package:contacts_service/contacts_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'package:millat/resources/authentication/bloc/service/auth_service.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';

import '../../model/auth_user_model/auth_user_model.dart';

part 'database_bloc.freezed.dart';
part 'database_event.dart';
part 'database_state.dart';

class DatabaseBloc extends Bloc<DatabaseEvent, DatabaseState> {
  final AuthService authService = AuthService();
  DatabaseBloc() : super(DatabaseState.initial()) {
    on<StoreTokenEvent>((event, emit) {
      final authBox = Hive.box(userBox);
      final token = event.token;
      authBox.put(authToken, token);
      emit(state.copyWith(token: token));
    });
    on<RemoveTokenEvent>(
      (event, emit) {
        final authBox = Hive.box(userBox);
        authBox.delete(authToken);
        emit(state.copyWith(token: ""));
      },
    );
    on<FetchToken>((event, emit) {
      final authBox = Hive.box(userBox);
      final String? token = authBox.get(authToken);
      if (token != null) {
        emit(state.copyWith(token: token));
      }
    });

    on<FetchAuthUser>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        try {
          final data = await authService.fetchAuthUser(context: event.context);

          emit(state.copyWith(authUserModel: data, isLoading: false));
          debugPrint("user states ${state.authUserModel}");
        } catch (e) {
          emit(state.copyWith(isLoading: false));

          throw Exception(e);
        }
      },
    );
    on<EditAuthUser>((event, emit) async {
      emit(state.copyWith(
        editIsloading: true,
      ));
      final data = await authService.editAuthUser(
        context: event.context,
        name: event.name,
        email: event.email,
        userName: event.userName,
        imageFile: state.imagebytes,
        dob: event.dob,
        institution: event.institution,
        profession: event.profession,
      );
      debugPrint('data $data');
      if (data['status'] == true) {
        debugPrint('data $data');
        emit(
          state.copyWith(
              editIsloading: false,
              editSuccesMessage: data['message'].toString()),
        );
      } else {
        emit(
          state.copyWith(
              editIsloading: false,
              editFailedMessage: data['message'].toString()),
        );

        emit(state.copyWith(editFailedMessage: ""));

        print(
            "state in the bloc of edit failed message ${state.editFailedMessage}");
      }
    });
    on<UploadImageEvent>((event, emit) async {
      try {
        File? image = await pickImage(event.source);
        emit(state.copyWith(
          imagebytes: image,
        ));
      } catch (e) {
        throw Exception(e);
      }
    });
    on<FetchContactEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        if (await Permission.contacts.isGranted) {
          final contacts = await ContactsService.getContacts();

          emit(state.copyWith(
              contacts: contacts, searchContacts: contacts, isLoading: false));
        } else {
          await Permission.contacts.request();
        }
      } catch (e) {
        emit(state.copyWith(isLoading: false));
        throw Exception(e);
      }
    });
    on<SearchContactEvent>((event, emit) {
      if (event.query == "") {
        final contacts = state.contacts;
        emit(state.copyWith(searchContacts: contacts, isLoading: false));
      } else {
        final contacts = state.contacts;
        final searchData = contacts?.where((contact) =>
            contact.givenName
                ?.toLowerCase()
                .contains(event.query.toLowerCase()) ??
            false);

        emit(state.copyWith(
            searchContacts: searchData?.toList(), isLoading: false));
      }
    });

    on<SaveCoverImage>((event, emit) async {
      emit(state.copyWith(coverImage: event.image));
      await Utilities.saveStringToSharedPreferences(
          Appstrings.coverImageKey, event.image);
    });
    on<FetchCoverImage>((event, emit) async {
      final img = await Utilities.getStringFromSharedPreferences(
          Appstrings.coverImageKey,
          nullVal: state.coverImage);
      emit(state.copyWith(coverImage: img));
    });
    on<DeleteAccount>((event, emit) async {
      emit(state.copyWith(failedMessage: "", succesMessage: ""));
      final data = await authService.deleteAccount(
        context: event.context,
      );
      if (data == "Please remove your order") {
        emit(state.copyWith(failedMessage: data));
        debugPrint(
            "succes ${state.succesMessage} failure ${state.failedMessage}");
      } else {
        debugPrint(
            "succes ${state.succesMessage} failure ${state.failedMessage}");
        emit(state.copyWith(succesMessage: data));
      }
    });
    on<EmptyStates>((event, emit) async {
      emit(state.copyWith(succesMessage: "", failedMessage: ""));
    });
    on<FetchUserReferralCode>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        final data = await authService.fetchUserReferralCode();
        emit(state.copyWith(referralCode: data, isLoading: false));
      } catch (e) {
        emit(state.copyWith(isLoading: false));
        throw Exception(e);
      }
    });
    on<FetchReferralMessage>((event, emit) async {
      final data = await authService.fetchReferralMessage();
      emit(state.copyWith(referralMessage: data));
    });
  }
  Future<File?> pickImage(ImageSource source) async {
    final ImagePicker imagePicker = ImagePicker();
    XFile? pickedFile = await imagePicker.pickImage(source: source);

    if (pickedFile != null) {
      return File(pickedFile.path);
    }

    return null;
  }
}
