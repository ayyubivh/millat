import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'terms_and_condtions_event.dart';
part 'terms_and_condtions_state.dart';
part 'terms_and_condtions_bloc.freezed.dart';

class TermsAndCondtionsBloc
    extends Bloc<TermsAndCondtionsEvent, TermsAndCondtionsState> {
  TermsAndCondtionsBloc() : super(const TermsAndCondtionsState()) {
    on<FetchTermsAndConditionsEvent>(_fetchTermsAndConditionsEvent);
  }

  _fetchTermsAndConditionsEvent(FetchTermsAndConditionsEvent event,
      Emitter<TermsAndCondtionsState> emit) {}
}
