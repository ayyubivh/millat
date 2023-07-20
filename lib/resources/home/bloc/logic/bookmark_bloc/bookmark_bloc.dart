import 'dart:async';

import 'package:bloc/bloc.dart';
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
  }

  _addCollection(AddCollection event, Emitter<BookmarkState> emit) {
    final newState = state.copyWith(
      name: event.name,
      description: event.description,
      image: event.image,
      id: event.id,
    );

    emit(newState);
    final name = state.name;
    final img = state.image;
    final id = state.id;
    final desc = state.description;

    final model = BookMarktCollectionModel(
        surahId: id, name: name, discription: desc, image: img);
    print('here is the model man ${model.toString()}');
    if (name.isEmpty || img.isEmpty || desc.isEmpty || id == 0) {
      print('empty field');
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
}
