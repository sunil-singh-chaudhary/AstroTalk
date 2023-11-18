import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class AstroEvent extends Equatable {
  const AstroEvent();
}

class FetchAstro extends AstroEvent {
  @override
  List<Object?> get props => [];
}
