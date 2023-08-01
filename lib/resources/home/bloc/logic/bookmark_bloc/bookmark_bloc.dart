import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/home/bloc/models/book_mark_hive_model/book_mark_hive_model.dart';
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
    on<FetchCollectionItem>(_fetchCollectionItme);
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
      BookMarkDB.instance.refresh();
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
    final id = state.verskey;
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
      BookMarkDB.instance.refresh();
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
    updatedIndexList.add(event.versesIndexList);
    if (state.versesIndexList.contains(event.versesIndexList)) {
      return;
    } else {
      emit(state.copyWith(versesIndexList: updatedIndexList));
    }
  }

  _saveVerseKeyEvent(SaveVerseKeyEvent event, Emitter<BookmarkState> emit) {
    List<String> updatedIndexList = List.from(state.verskey);
    updatedIndexList.add(event.versekey);
    if (state.verskey.contains(event.versekey)) {
      return;
    } else {
      emit(state.copyWith(verskey: updatedIndexList));
      print('here is the verskey list ${state.verskey}');
    }
  }

  _emptyIndexEvent(event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(versesIndexList: []));
  }

  _emptyVerseKeyEvent(EmptyVerseKeyEvent event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(verskey: []));
  }

  _fetchCollectionItme(event, Emitter<BookmarkState> emit) {
    emit(state.copyWith(dbCollectionItems: event.bookMarkCollectionModel));
  }
}
