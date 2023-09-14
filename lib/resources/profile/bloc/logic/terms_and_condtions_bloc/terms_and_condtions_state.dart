part of 'terms_and_condtions_bloc.dart';

@freezed
class TermsAndCondtionsState with _$TermsAndCondtionsState {
  const factory TermsAndCondtionsState({
    required TermsConditionsModel? termsConditionsModel,
    required bool isLoading,
  }) = _TermsAndCondtionsState;
  factory TermsAndCondtionsState.initial() => const TermsAndCondtionsState(
      termsConditionsModel: null, isLoading: false);
}
