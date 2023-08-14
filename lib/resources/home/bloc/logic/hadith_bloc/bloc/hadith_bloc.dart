import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/service/hadith_service.dart';
import '../../../models/hadith/hadit_book_chapter_model/hadit_book_chapter_model.dart';
import '../../../models/hadith/hadith_book_model/hadith_book_model.dart';

part 'hadith_event.dart';
part 'hadith_state.dart';
part 'hadith_bloc.freezed.dart';

class HadithBloc extends Bloc<HadithEvent, HadithState> {
  final HadithService hadithService = HadithService();
  HadithBloc() : super(HadithState.initial()) {
    on<FetchHadithBookEvent>(_fetchHadithBookModelEvent);
    on<FetchHadithBooksChapterEvent>(_hadithBooksChapterModel);
    on<SearchHadithBookevent>(_searchHadithBookevent);
  }
  _fetchHadithBookModelEvent(
      FetchHadithBookEvent event, Emitter<HadithState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await hadithService.fetchHadithBooks();
      emit(state.copyWith(hadithBookModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _hadithBooksChapterModel(
      FetchHadithBooksChapterEvent event, Emitter<HadithState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data =
          await hadithService.fetchHadithBooksChapter(slug: event.slug);
      emit(state.copyWith(hadithBooksChapterModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception();
    }
  }

  _searchHadithBookevent(
      SearchHadithBookevent event, Emitter<HadithState> emit) {
    final value = event.searchVal.toLowerCase();
    if (value.isNotEmpty) {
      // emit(state.copyWith())
    }
  }
}
