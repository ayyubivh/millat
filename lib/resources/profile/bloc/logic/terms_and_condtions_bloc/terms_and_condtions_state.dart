part of 'terms_and_condtions_bloc.dart';

@freezed
class TermsAndConditionsState with _$TermsAndConditionsState {
  const factory TermsAndConditionsState({
    required TermsConditionsModel? termsConditionsModel,
    required bool isLoading,
  }) = _TermsAndConditionsState;
  factory TermsAndConditionsState.initial() => const TermsAndConditionsState(
      termsConditionsModel: null, isLoading: false);
}
