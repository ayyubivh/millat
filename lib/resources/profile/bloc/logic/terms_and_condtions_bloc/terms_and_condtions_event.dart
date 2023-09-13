part of 'terms_and_condtions_bloc.dart';

@freezed
class TermsAndCondtionsEvent with _$TermsAndCondtionsEvent {
  const factory TermsAndCondtionsEvent.fetchTermsAndConditionsEvent({
    required String slug,
  }) = FetchTermsAndConditionsEvent;
}
