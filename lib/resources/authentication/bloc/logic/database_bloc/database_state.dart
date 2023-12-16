part of 'database_bloc.dart';

@freezed
class DatabaseState with _$DatabaseState {
  const factory DatabaseState({
    required String token,
    // required String name,
    // required String email,
    required AuthUserModel? authUserModel,
    required bool isLoading,
    required bool editIsloading,
    required String succesMessage,
    required File? imagebytes,
    required String failedMessage,
    required String editFailedMessage,
    required List<Contact>? contacts,
    required List<Contact>? searchContacts,
    required String coverImage,
    required String editSuccesMessage,
    required String referralCode,
    required String referralMessage,
  }) = _Initial;
  factory DatabaseState.initial() => const DatabaseState(
      token: "",
      // email: "",
      // name: "",
      imagebytes: null,
      authUserModel: null,
      isLoading: false,
      succesMessage: "",
      failedMessage: "",
      editIsloading: false,
      coverImage: AppAssetsStrings.profileCoverImg,
      contacts: [],
      editFailedMessage: "",
      editSuccesMessage: "",
      referralCode: "",
      referralMessage: "",
      searchContacts: []);
}
