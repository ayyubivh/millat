import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
import 'package:millat/utils/assets_paths.dart';
import '../../../../../utils/string_constants.dart';
import '../../db/db_functions.dart';

part 'bookmark_event.dart';
part 'bookmark_state.dart';
part 'bookmark_bloc.freezed.dart';

class BookmarkBloc extends Bloc<BookmarkEvent, BookmarkState> {
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
    on<SaveVerseKeyEvent>(_saveVerseKeyEvent);
    on<EmptyIndexEvent>(_emptyIndexEvent);
    on<EmptyVerseKeyEvent>(_emptyVerseKeyEvent);
    on<FetchCollectionItem>(_fetchCollectionItem);
    on<AddFavCollection>(_addFavCollection);
    on<RemoveBookmark>(_removeBookmark);
  }

  _addCollection(AddCollection event, Emitter<BookmarkState> emit) {
    final newState = state.copyWith(
      name: event.name,
      description: event.description,
      image: event.image,
      verskey: event.verskey,
      dbId: event.dbId!,
    );

    emit(newState);
    final name = state.name;
    final img = state.image;
    final versekey = state.verskey;
    final desc = state.description;
    final dbId = state.dbId;

    final model = BookMarktCollectionModel(
        id: dbId,
        verseKey: state.verskey,
        name: name,
        discription: desc,
        image: img);

    if (name.isEmpty || img.isEmpty || desc.isEmpty || versekey == []) {
    } else {
      BookMarkDB.instance.addCollection(model);
    }
  }

  _addFavCollection(
    AddFavCollection event,
    Emitter<BookmarkState> emit,
  ) {
    final model = BookMarktCollectionModel(
        id: '1',
        verseKey: event.verskey,
        name: Appstrings.myFavorite,
        discription: "Favorite Item Collections",
        image: AppAssetsStrings.favoriteImg);

    BookMarkDB.instance.addCollection(model);
  }

  _fetchCollectionItem(
      FetchCollectionItem event, Emitter<BookmarkState> emit) async {
    try {
      final data = await BookMarkDB.instance.getAllBookmarkCollection();
      emit(state.copyWith(dbCollectionItems: data));
    } catch (e) {
      throw Exception(e);
    }
  }

  // _removeBookmark(RemoveBookmark event, Emitter<BookmarkState> emit) {
  //   try {
  //     final updatedCollectionItems = state.dbCollectionItems.where((item) {
  //       return !item.verseKey.contains(event.verseKey);
  //     }).toList();

  //     final newState =
  //         state.copyWith(dbCollectionItems: updatedCollectionItems);
  //     emit(newState);
  //   } catch (e) {
  //     throw Exception(e);
  //   }
  // }
  _removeBookmark(RemoveBookmark event, Emitter<BookmarkState> emit) {
    try {
      final updatedCollectionItems =
          List<BookMarktCollectionModel>.from(state.dbCollectionItems);

      final int itemIndex = updatedCollectionItems
          .indexWhere((item) => item.verseKey.contains(event.verseKey));

      if (itemIndex != -1) {
        final List<String> updatedVerseKeys =
            List<String>.from(updatedCollectionItems[itemIndex].verseKey);
        updatedVerseKeys.remove(event.verseKey);

        final updatedItem = BookMarktCollectionModel(
          id: updatedCollectionItems[itemIndex].id,
          name: updatedCollectionItems[itemIndex].name,
          discription: updatedCollectionItems[itemIndex].discription,
          image: updatedCollectionItems[itemIndex].image,
          verseKey: updatedVerseKeys,
        );
        BookMarkDB.instance.editCollection(updatedItem, updatedItem.id);
        updatedCollectionItems[itemIndex] = updatedItem;
      }

      final newState =
          state.copyWith(dbCollectionItems: updatedCollectionItems);
      emit(newState);
    } catch (e) {
      throw Exception(e);
    }
  }

  _saveImageEvent(SaveImageEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(image: event.img));
    print('here is the image ${state.image}');
  }

  _saveQuranChapterId(SaveQuranChapterId event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(id: event.id));
    print('here is the new id ${state.id}');
  }

  _nameChanged(NameChanged event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(name: event.nameValue));
    print('here is the val ${state.name}');
  }

  _descriptionChanged(DescriptionChanged event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(description: event.descriptionValue));
  }

  _editCollection(EditCollection event, Emitter<BookmarkState> emit) {
    final newState = state.copyWith(
      name: event.name,
      description: event.description,
      image: event.image,
    );
    emit(newState);
    final name = state.name;
    final img = state.image;
    final id = event.verskey;
    final desc = state.description;
    final dbId = event.dbId;

    final model = BookMarktCollectionModel(
      id: dbId,
      verseKey: id,
      name: name,
      discription: desc,
      image: img,
    );

    if (name.isEmpty || img.isEmpty || desc.isEmpty || id == 0) {
    } else {
      BookMarkDB.instance.editCollection(model, model.id);
    }
  }

  _saveIndexEvent(SaveIndexEvent event, Emitter<BookmarkState> emit) {
    List<int> updatedIndexList = List.from(state.indexList);
    updatedIndexList.add(event.indexList);
    if (state.indexList.contains(event.indexList)) {
      return;
    } else {
      emit(state.copyWith(indexList: updatedIndexList));
    }
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

  _saveVerseKeyEvent(SaveVerseKeyEvent event, Emitter<BookmarkState> emit) {
    List<String> updatedIndexList = List.from(state.verskey);

    if (updatedIndexList.contains(event.versekey)) {
      updatedIndexList.remove(event.versekey);
    } else {
      updatedIndexList.add(event.versekey);
    }

    emit(state.copyWith(verskey: updatedIndexList));
    print('here is the verskey list $updatedIndexList');
  }

  _emptyIndexEvent(event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(versesIndexList: []));
  }

  _emptyVerseKeyEvent(EmptyVerseKeyEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(verskey: []));
  }
}
