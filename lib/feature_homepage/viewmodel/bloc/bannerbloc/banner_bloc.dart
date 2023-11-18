import 'dart:io';
import 'package:astrotalk_project/feature_homepage/repository/server/api_repository.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_event.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_state.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class BannerBloc extends Bloc<BannerEvent, BannerState> {
  ApiRepository userRepository;

  BannerBloc({required this.userRepository}) : super(BannerInitial()) {
    on<FetchBanner>((event, emit) => getbannerList(event, emit));
  }

  getbannerList(FetchBanner event, Emitter<BannerState> emit) async {
    emit(BannerLoading());
    debugPrint('bloc api call');

    try {
      final data = await userRepository.fetchbannerData("getCustomerHome");
      debugPrint('bloc api data $data');

      emit(BannerSuccess(data));
    } catch (e) {
      if (e is HttpException) {
        emit(BannerError(msg: e.message));
      } else {
        emit(BannerError(msg: e.toString()));
      }
    }
  }
}
