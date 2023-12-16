part of 'database_bloc.dart';

@freezed
class DatabaseEvent with _$DatabaseEvent {
  const factory DatabaseEvent.storeTokenEvent({
    required String token,
  }) = StoreTokenEvent;
  const factory DatabaseEvent.fetchToken() = FetchToken;
  // const factory DatabaseEvent.storeUserDetails({
  //   required String email,
  //   required String name,
  // }) = StoreUserDetails;
  // const factory DatabaseEvent.fetchUserDetails() = FetchUserDetails;
  const factory DatabaseEvent.fetchAuthUser({
    required BuildContext context,
  }) = FetchAuthUser;
  const factory DatabaseEvent.editAuthUser({
    required String name,
    String? email,
    required String userName,
    required String institution,
    required String dob,
    required String profession,
    required String image,
    required BuildContext context,
  }) = EditAuthUser;
  const factory DatabaseEvent.removeTokenEvent() = RemoveTokenEvent;
  const factory DatabaseEvent.uploadImageEvent({required ImageSource source}) =
      UploadImageEvent;
  const factory DatabaseEvent.fetchContactEvent() = FetchContactEvent;
  const factory DatabaseEvent.saveCoverImage({
    required String image,
  }) = SaveCoverImage;
  const factory DatabaseEvent.fetchCoverImage() = FetchCoverImage;
  const factory DatabaseEvent.deleteAccount({
    required BuildContext context,
  }) = DeleteAccount;
  const factory DatabaseEvent.fetchUserReferralCode() = FetchUserReferralCode;
  const factory DatabaseEvent.fetchReferralMessage() = FetchReferralMessage;
  const factory DatabaseEvent.searchContactEvent({
    required String query,
  }) = SearchContactEvent;
}
