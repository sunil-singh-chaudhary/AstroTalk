import 'dart:io';
import 'package:astrotalk_project/feature_homepage/repository/server/api_repository.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_event.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_state.dart';
import 'package:astrotalk_project/utils/constants.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

class AstroBloc extends Bloc<AstroEvent, AstroState> {
  ApiRepository userRepository;

  AstroBloc({required this.userRepository}) : super(AstroInitial()) {
    on<FetchAstro>((event, emit) => getAstroList(event, emit));
  }

  getAstroList(FetchAstro event, Emitter<AstroState> emit) async {
    emit(AstroLoading());

    try {
      final data =
          await userRepository.fetchAstroList("getAstrologer", bearerToken);

      emit(AstroSuccess(data));
    } catch (e) {
      if (e is HttpException) {
        emit(AstroError(msg: e.message));
        debugPrint('Exception is ${e.uri} ');
      } else {
        debugPrint('Exception else is $e ');

        emit(AstroError(msg: e.toString()));
      }
    }
  }
}
