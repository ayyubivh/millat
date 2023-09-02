import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/logic/dua_bloc/dua_bloc.dart';
import 'package:millat/resources/home/bloc/service/tasbih_services.dart';

import '../../models/tasbih/tasbih_dikr_model.dart';

part 'tasbih_event.dart';
part 'tasbih_state.dart';
part 'tasbih_bloc.freezed.dart';

class TasbihBloc extends Bloc<TasbihEvent, TasbihState> {
  TasbihService tasbihService = TasbihService();
  TasbihBloc() : super(TasbihState.initial()) {
    on<SelectDhikerEvent>(_selectDikrEvent);
    on<FetchDhikr>(_fetchDhikr);
    on<DikhrIncreaseCountEvent>(_dikhrIncreaseEvent);
    on<ChangeTasbihGoalEvent>(_changeTasbihGoalEvent);
    on<ResetTashbihCounterEvent>(_resetTashbihCounterEvent);
    on<AddTasbihEvent>(_addTasbihEvent);
    on<CheckLoopEvent>(_checkLoopEvent);
  }

  _selectDikrEvent(SelectDhikerEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(
        tasbihDhikr: event.dikr,
        tasbihDikrTranslate: event.translate,
        tasbihId: event.id));
  }

  _fetchDhikr(FetchDhikr event, Emitter<TasbihState> emit) async {
    try {
      final data = await tasbihService.fetchDhikr();
      emit(state.copyWith(dhikrModel: data));
    } catch (e) {
      throw Exception();
    }
  }

  _dikhrIncreaseEvent(
      DikhrIncreaseCountEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(dhikrCount: state.dhikrCount + 1));
  }

  _changeTasbihGoalEvent(
      ChangeTasbihGoalEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(dhikrhGoal: event.newValue));
  }

  _resetTashbihCounterEvent(
      ResetTashbihCounterEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(dhikrCount: 0));
  }

  _addTasbihEvent(AddTasbihEvent event, Emitter<TasbihState> emit) async {
    try {
      final data = await tasbihService.addTasbih(
          context: event.buildContext, id: event.id);
      // print('data on the add tasbih ${data['message']}');
    } catch (e) {
      throw Exception();
    }
  }

  _checkLoopEvent(CheckLoopEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(isBoolGreaterThanOne: true));
  }
}
