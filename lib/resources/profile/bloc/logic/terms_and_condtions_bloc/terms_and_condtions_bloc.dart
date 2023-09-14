import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/profile/bloc/models/terms_and_conditions_model.dart';
import 'package:millat/resources/profile/bloc/service/terms_and_condition_services.dart';

part 'terms_and_condtions_event.dart';
part 'terms_and_condtions_state.dart';
part 'terms_and_condtions_bloc.freezed.dart';

class TermsAndCondtionsBloc
    extends Bloc<TermsAndCondtionsEvent, TermsAndCondtionsState> {
  TermsAndconditionsServces termsAndconditionsServces =
      TermsAndconditionsServces();
  TermsAndCondtionsBloc() : super(TermsAndCondtionsState.initial()) {
    on<FetchTermsAndConditionsEvent>(_fetchTermsAndConditionsEvent);
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
}
