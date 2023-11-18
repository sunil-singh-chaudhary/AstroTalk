import 'package:astrotalk_project/feature_homepage/model/astrolist_model.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

abstract class AstroState extends Equatable {
  const AstroState();
}

class AstroInitial extends AstroState {
  @override
  List<Object?> get props => [];
}

class AstroLoading extends AstroState {
  @override
  List<Object?> get props => [];
}

class AstroSuccess extends AstroState {
  AstroListModel response;
  AstroSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

@immutable
class AstroError extends AstroState {
  String? msg;
  AstroError({this.msg});

  @override
  List<Object?> get props => [msg];
}
