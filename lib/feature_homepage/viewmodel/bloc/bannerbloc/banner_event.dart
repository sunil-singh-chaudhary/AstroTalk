import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';

@immutable
abstract class BannerEvent extends Equatable {
  const BannerEvent();
}

class FetchBanner extends BannerEvent {
  @override
  List<Object?> get props => [];
}
