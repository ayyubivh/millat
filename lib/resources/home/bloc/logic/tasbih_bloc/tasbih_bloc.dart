import 'dart:async';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:just_audio/just_audio.dart';
import 'package:millat/resources/home/bloc/service/tasbih_services.dart';

import '../../../../../enums/enumertations.dart';
import '../../models/tasbih/tasbih_dikr_model.dart';

part 'tasbih_event.dart';
part 'tasbih_state.dart';
part 'tasbih_bloc.freezed.dart';

class TasbihBloc extends Bloc<TasbihEvent, TasbihState> {
  TasbihService tasbihService = TasbihService();
  final AudioPlayer audioPlayer = AudioPlayer();

  TasbihBloc() : super(TasbihState.initial()) {
    on<SelectDhikerEvent>(_selectDikrEvent);
    on<FetchDhikr>(_fetchDhikr);
    on<DikhrIncreaseCountEvent>(_dikhrIncreaseEvent);
    on<ChangeTasbihGoalEvent>(_changeTasbihGoalEvent);
    on<ResetTashbihCounterEvent>(_resetTashbihCounterEvent);
    on<AddTasbihEvent>(_addTasbihEvent);
    on<CheckLoopEvent>(_checkLoopEvent);
    on<DecreaseTasbhiCountEvent>(_decreaseTasbhiCountEvent);
    on<ChangeThemeEvent>(_changeThemeEvent);
    on<ChangeThemeIndex>(_changeThemeIndex);
    on<MuteAudioEvent>(_muteAudioEvent);
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
    audioPlayer.setAsset("assets/audio/tasbih_click.mp3");
    audioPlayer.play();
    Platform.isIOS ? HapticFeedback.lightImpact() : HapticFeedback.vibrate();
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
      await tasbihService.addTasbih(context: event.buildContext, id: event.id);
      // print('data on the add tasbih ${data['message']}');
    } catch (e) {
      throw Exception();
    }
  }

  _checkLoopEvent(CheckLoopEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(isBoolGreaterThanOne: true));
  }

  _decreaseTasbhiCountEvent(
      DecreaseTasbhiCountEvent event, Emitter<TasbihState> emit) {
    if (state.dhikrCount > 0) {
      emit(state.copyWith(dhikrCount: state.dhikrCount - 1));
    }
  }

  _changeThemeEvent(ChangeThemeEvent event, Emitter<TasbihState> emit) {
    emit(state.copyWith(tasbihThemes: event.tasbihTheme));
  }

  _changeThemeIndex(ChangeThemeIndex event, Emitter<TasbihState> emit) {
    emit(state.copyWith(themeIndex: event.themeIndex));
  }

  _muteAudioEvent(MuteAudioEvent event, Emitter<TasbihState> emit) async {
    if (state.audioMute == false) {
      await audioPlayer.setVolume(0.0);
      emit(state.copyWith(audioMute: true));
    } else {
      await audioPlayer.setVolume(5.0);
      emit(state.copyWith(audioMute: false));
    }
  }
}
