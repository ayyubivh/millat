import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:millat/resources/shop/bloc/models/review/review_models.dart';
import 'package:millat/resources/shop/bloc/service/review_service.dart';

part 'review_event.dart';
part 'review_state.dart';
part 'review_bloc.freezed.dart';

class ReviewBloc extends Bloc<ReviewEvent, ReviewState> {
  ReviewServices reviewServices = ReviewServices();
  ReviewBloc() : super(ReviewState.initial()) {
    on<FetchRatingEvent>(_fetchRatingEvent);
    on<AddReview>(_addReview);
    on<UpdateReiview>(_updateReview);
  }

  _fetchRatingEvent(FetchRatingEvent event, Emitter<ReviewState> emit) async {
    emit(state.copyWith(isLoading: true));
    try {
      final data = await reviewServices.fetchReviews(event.context, event.id);
      emit(state.copyWith(reviewModel: data, isLoading: false));
    } catch (e) {
      emit(state.copyWith(isLoading: false));
    }
  }

  _addReview(AddReview event, Emitter<ReviewState> emit) async {
    try {
      reviewServices.addReview(
          context: event.context,
          productId: event.productId,
          name: event.name,
          comment: event.comment,
          rating: event.rating);
    } catch (e) {
      throw Exception(e);
    }
  }

  _updateReview(UpdateReiview event, Emitter<ReviewState> emit) {
    try {
      reviewServices.updateReview(
          context: event.context,
          productId: event.productId,
          comment: event.comment,
          rating: event.rating);
    } catch (e) {
      throw Exception(e);
    }
  }
}
