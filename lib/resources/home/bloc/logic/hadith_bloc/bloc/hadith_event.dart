part of 'hadith_bloc.dart';

@freezed
class HadithEvent with _$HadithEvent {
  const factory HadithEvent.fetchHadithBookEvent() = FetchHadithBookEvent;
  const factory HadithEvent.fetchHadithBooksChapterEvent({
    required String slug,
  }) = FetchHadithBooksChapterEvent;
  const factory HadithEvent.searchHadithBookevent({required String searchVal}) =
      SearchHadithBookevent;
}
