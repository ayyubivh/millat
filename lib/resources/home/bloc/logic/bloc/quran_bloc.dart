import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/service/quran_service.dart';

import '../../models/quran_chapter_models/quran_chapter_models.dart';

part 'quran_event.dart';
part 'quran_state.dart';
part 'quran_bloc.freezed.dart';

class QuranBloc extends Bloc<QuranEvent, QuranState> {
  final QuranServices quranServices = QuranServices();
  QuranBloc() : super(QuranState.initial()) {
    on<FetchQuaranChapters>(_fetchQuranChapters);
  }

  _fetchQuranChapters(
      FetchQuaranChapters event, Emitter<QuranState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await quranServices.fetchQuranChapters();
      emit(state.copyWith(quranChaptersModel: data, isLoading: false));

      print("here is the quran chapter in bloc ${state.quranChaptersModel}");
    } catch (e) {
      debugPrint("error fetch quran bloc $e");
    }
  }
}
