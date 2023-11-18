// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:astrotalk_project/feature_homepage/views/screen/dashboard.dart'
    as _i1;
import 'package:astrotalk_project/feature_homepage/views/screen/home_page_banner.dart'
    as _i2;
import 'package:auto_route/auto_route.dart' as _i3;

abstract class $AutoRoutes extends _i3.RootStackRouter {
  $AutoRoutes({super.navigatorKey});

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    Dashboard.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.DashBoard(),
      );
    },
    HomePageBanner.name: (routeData) {
      return _i3.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.HomePageBanner(),
      );
    },
  };
}

/// generated route for
/// [_i1.DashBoard]
class Dashboard extends _i3.PageRouteInfo<void> {
  const Dashboard({List<_i3.PageRouteInfo>? children})
      : super(
          Dashboard.name,
          initialChildren: children,
        );

  static const String name = 'Dashboard';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}

/// generated route for
/// [_i2.HomePageBanner]
class HomePageBanner extends _i3.PageRouteInfo<void> {
  const HomePageBanner({List<_i3.PageRouteInfo>? children})
      : super(
          HomePageBanner.name,
          initialChildren: children,
        );

  static const String name = 'HomePageBanner';

  static const _i3.PageInfo<void> page = _i3.PageInfo<void>(name);
}
