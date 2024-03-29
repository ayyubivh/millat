import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/service/quran_bookmark_services.dart';

import '../../models/book_mark_hive_model/quran_bookmark_collection.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
  final QuranBookmarkServices _quranBookmarkServices = QuranBookmarkServices();
  BookmarkBloc() : super(BookmarkState.initial()) {
    on<NameChanged>(_nameChanged);
    on<DescriptionChanged>(_descriptionChanged);
    on<AddCollection>(_addCollection);
    on<SaveImageEvent>(_saveImageEvent);
    on<SaveQuranChapterId>(_saveQuranChapterId);
    on<EditCollection>(_editCollection);
    on<SaveIndexEvent>(_saveIndexEvent);
    on<ClearIndexEvent>(_clearIndexEvent);
    on<ChangeIndexEvent>(_changeIndexEvent);
    on<SaveVersesIndexEvent>(_saveVerseIndex);
    on<EmptyIndexEvent>(_emptyIndexEvent);
    on<EmptyVerseKeyEvent>(_emptyVerseKeyEvent);
    on<FetchCollectionItem>(_fetchCollectionItem);
    on<RemoveBookmark>(_removeBookmark);
    on<saveBookmarkCollectionId>(_saveBookmarkCollectionId);
    on<AddVersesTobookmark>(_addVersesTobookmark);
    on<EmptyBookmarkCollectionId>(_emptyBookmarkCollectionId);
  }

  _saveImageEvent(SaveImageEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(image: event.img));
    debugPrint('here is the image ${state.image}');
  }

  _saveQuranChapterId(SaveQuranChapterId event, Emitter<BookmarkState> emit) {
    // emit(state.copyWith(id: event.id));
    // debugPrint('here is the new id ${state.id}');
  }

  _nameChanged(NameChanged event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(name: event.nameValue));
    debugPrint('here is the val ${state.name}');
  }

  _descriptionChanged(DescriptionChanged event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(description: event.descriptionValue));
  }

  _saveIndexEvent(SaveIndexEvent event, Emitter<BookmarkState> emit) {
    List<int> updatedIndexList = List.from(state.indexList);
    updatedIndexList.add(event.indexList);
    if (state.indexList.contains(event.indexList)) {
      return;
    } else {
      emit(state.copyWith(indexList: updatedIndexList));
    }
    print("index ${state.index}");
  }

  _clearIndexEvent(ClearIndexEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(indexList: []));
  }

  _changeIndexEvent(event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(index: event.index));
  }

  _saveVerseIndex(SaveVersesIndexEvent event, Emitter<BookmarkState> emit) {
    List<int> updatedIndexList = List.from(state.versesIndexList);

    if (updatedIndexList.contains(event.versesIndexList)) {
      updatedIndexList.remove(event.versesIndexList);
    } else {
      updatedIndexList.add(event.versesIndexList);
    }

    emit(state.copyWith(versesIndexList: updatedIndexList));
  }

  _emptyIndexEvent(event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(versesIndexList: []));
  }

  _emptyVerseKeyEvent(EmptyVerseKeyEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(verskey: []));
  }

//----------------------------------------------------
  _addCollection(AddCollection event, Emitter<BookmarkState> emit) async {
    try {
      final newState = state.copyWith(
        name: event.name,
        image: event.image,
      );

      emit(newState);

      final name = state.name;
      final img = state.image;

      final res = await _quranBookmarkServices.addBookMark(
        title: name,
        imageFilePath: img,
      );
      emit(state.copyWith(isLoading: true));

      if (res['status'] == true) {
        if (state.bookmarkCollectionId.isNotEmpty) {
          final successData = await _quranBookmarkServices.addVerseToBookmark(
            ayahs: state.bookmarkCollectionId.toList(),
            slug: state.name,
          );

          if (successData['status'] == true) {
            final data = await _quranBookmarkServices.fetchBookmarks();
            emit(state.copyWith(quranbookmarkModel: data, isLoading: false));
          }
        } else {
          final data = await _quranBookmarkServices.fetchBookmarks();
          emit(state.copyWith(quranbookmarkModel: data, isLoading: false));
        }
      }
    } catch (error) {
      emit(
          state.copyWith(isLoading: false)); // Ensure isLoading is set to false
    }
  }

  _editCollection(EditCollection event, Emitter<BookmarkState> emit) async {
    emit(state.copyWith(isLoading: true));

    final newState = state.copyWith(
      name: event.name,
      description: event.description,
      image: event.image,
    );
    emit(newState);

    final id = event.verskey;

    try {
      final res = await _quranBookmarkServices.editBookmark(
        // title: name,
        // surahs: [],
        ayahs: id,
        // imageFilePath: img,
      );
      if (res['status'] == true) {
        final data = await _quranBookmarkServices.fetchBookmarks();
        emit(state.copyWith(quranbookmarkModel: data, isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));
      throw Exception(e);
    }
  }

  _removeBookmark(RemoveBookmark event, Emitter<BookmarkState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final res = await _quranBookmarkServices.deleteBookmark(event.id);
      if (res['status'] == true) {
        final data = await _quranBookmarkServices.fetchBookmarks();
        emit(state.copyWith(quranbookmarkModel: data, isLoading: false));
      }
    } catch (e) {
      emit(state.copyWith(isLoading: false));

      throw Exception(e);
    }
    // try {
    // final updatedCollectionItems =
    //     List<BookMarkCollectionModel>.from(state.dbCollectionItems);

    // final int itemIndex = updatedCollectionItems
    //     .indexWhere((item) => item.verseKey.contains(event.verseKey));

    // if (itemIndex != -1) {
    //   final List<String> updatedVerseKeys =
    //       List<String>.from(updatedCollectionItems[itemIndex].verseKey);
    //   updatedVerseKeys.remove(event.verseKey);

    //   final updatedItem = BookMarkCollectionModel(
    //     id: updatedCollectionItems[itemIndex].id,
    //     name: updatedCollectionItems[itemIndex].name,
    //     description: updatedCollectionItems[itemIndex].description,
    //     image: updatedCollectionItems[itemIndex].image,
    //     verseKey: updatedVerseKeys,
    //   );
    //   // BookMarkDB.instance.editCollection(updatedItem, updatedItem.id);
    //   updatedCollectionItems[itemIndex] = updatedItem;
  }

  //   final newState =
  //       state.copyWith(dbCollectionItems: updatedCollectionItems);
  //   emit(newState);
  // } catch (e) {
  //   throw Exception(e);
  // }

  _fetchCollectionItem(
      FetchCollectionItem event, Emitter<BookmarkState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await _quranBookmarkServices.fetchBookmarks();
      emit(
        state.copyWith(
          quranbookmarkModel: data,
          isLoading: false,
        ),
      );
      print(state.bookmarkCollectionId);
    } catch (e) {
      throw Exception(e);
    }
  }

  _saveBookmarkCollectionId(
      saveBookmarkCollectionId event, Emitter<BookmarkState> emit) {
    Set<String> updatedSet = Set.from(state.bookmarkCollectionId);
    if (updatedSet.contains(event.id)) {
      updatedSet.remove(event.id);
    } else {
      updatedSet.add(event.id);
    }

    emit(state.copyWith(bookmarkCollectionId: updatedSet));
    print(state.bookmarkCollectionId);
  }

  FutureOr<void> _addVersesTobookmark(
      AddVersesTobookmark event, Emitter<BookmarkState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await _quranBookmarkServices.addVerseToBookmark(
          ayahs: state.bookmarkCollectionId.toList(), slug: event.slug);
      if (data['status'] == true) {
        final res = await _quranBookmarkServices.fetchBookmarks();
        emit(state.copyWith(quranbookmarkModel: res, isLoading: false));
      }
    } catch (e) {
      throw Exception(e);
    }
  }

  _emptyBookmarkCollectionId(
      EmptyBookmarkCollectionId event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(bookmarkCollectionId: {}));
  }
}
