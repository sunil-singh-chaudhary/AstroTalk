import 'package:astrotalk_project/feature_homepage/model/banner_model.dart';
import 'package:equatable/equatable.dart';

abstract class BannerState extends Equatable {
  const BannerState();
}

class BannerInitial extends BannerState {
  @override
  List<Object?> get props => [];
}

class BannerLoading extends BannerState {
  @override
  List<Object?> get props => [];
}

class BannerSuccess extends BannerState {
  BannerModel response;
  BannerSuccess(this.response);

  @override
  List<Object?> get props => [response];
}

class BannerError extends BannerState {
  String? msg;
  BannerError({this.msg});

  @override
  List<Object?> get props => [msg];
}
