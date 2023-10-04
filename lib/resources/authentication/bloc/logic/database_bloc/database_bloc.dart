import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';
import 'package:image_picker/image_picker.dart';
import 'package:millat/resources/authentication/bloc/service/auth_service.dart';
import 'package:millat/utils/assets_paths.dart';
import 'package:millat/utils/string_constants.dart';
import 'package:millat/utils/utils.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:contacts_service/contacts_service.dart';
import '../../model/auth_user_model/auth_user_model.dart';

part 'database_event.dart';
part 'database_state.dart';
part 'database_bloc.freezed.dart';

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
    // on<StoreUserDetails>((event, emit) {
    //   final authBox = Hive.box(userBox);
    //   final email = event.email;
    //   final name = event.name;
    //   authBox.put(emailKey, email);
    //   authBox.put(nameKey, name);
    //   // emit(state.copyWith(email: email, name: name));
    //   // print('email ${email} and the $name');
    //   // emit(state.copyWith(userDetails: userDetails));
    // });
    // on<FetchUserDetails>((event, emit) {
    //   final authBox = Hive.box(userBox);
    //   final email = authBox.get(emailKey);
    //   final name = authBox.get(nameKey);
    //   // emit(state.copyWith(email: email, name: name));
    //   // print(
    //   //     'email on the database bloc ${state.email} ane the username ${state.name}');
    // });
    on<FetchAuthUser>(
      (event, emit) async {
        emit(state.copyWith(isLoading: true));
        try {
          final data = await authService.fetchAuthUser(context: event.context);

          emit(state.copyWith(authUserModel: data, isLoading: false));
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
      print('image ${state.imagebytes}');
      if (data['status'] == true) {
        print('data $data');
        emit(state.copyWith(
            editIsloading: false, succesMessage: data['message'].toString()));
      } else {
        emit(state.copyWith(
            editIsloading: false, failedMessage: data['message'].toString()));
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
        // log("e yann ...>>>>${e.toString()}");
      }
    });
    on<FetchContactEvent>((event, emit) async {
      emit(state.copyWith(isLoading: true));
      try {
        if (await Permission.contacts.isGranted) {
          final contacts = await ContactsService.getContacts();

          emit(state.copyWith(contacts: contacts, isLoading: false));
        } else {
          await Permission.contacts.request();
        }
      } catch (e) {
        emit(state.copyWith(isLoading: false));
        throw Exception(e);
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
        print("succes ${state.succesMessage} failure ${state.failedMessage}");
      } else {
        print("succes ${state.succesMessage} failure ${state.failedMessage}");
        emit(state.copyWith(succesMessage: data));
      }
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
