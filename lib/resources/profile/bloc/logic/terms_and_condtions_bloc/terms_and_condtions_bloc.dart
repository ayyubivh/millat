
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/profile/bloc/models/terms_and_conditions_model.dart';
import 'package:millat/resources/profile/bloc/service/terms_and_condition_services.dart';

part 'terms_and_condtions_event.dart';
part 'terms_and_condtions_state.dart';
part 'terms_and_condtions_bloc.freezed.dart';

class TermsAndConditionsBloc
    extends Bloc<TermsAndCondtionsEvent, TermsAndCondtionsState> {
  TermsAndconditionsServces termsAndconditionsServces =
      TermsAndconditionsServces();
  TermsAndConditionsBloc() : super(TermsAndCondtionsState.initial()) {
    on<FetchTermsAndConditionsEvent>(_fetchTermsAndConditionsEvent);
    on<PostHelpAndSupport>(_postHelpAndSupport);
  }

  _fetchTermsAndConditionsEvent(FetchTermsAndConditionsEvent event,
      Emitter<TermsAndCondtionsState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final result = await termsAndconditionsServces.fetchTermsAndConditions(
          slug: event.slug);
      emit(state.copyWith(termsConditionsModel: result, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _postHelpAndSupport(
      PostHelpAndSupport event, Emitter<TermsAndCondtionsState> emit) async {
    try {
      termsAndconditionsServces.postHelpAndSupport(
          phoneNumber: event.phoneNumber,
          email: event.email,
          name: event.name,
          message: event.message);
    } catch (e) {
      throw Exception(e);
    }
  }
}
