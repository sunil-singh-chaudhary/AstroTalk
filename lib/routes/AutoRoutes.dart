import 'package:astrotalk_project/routes/AutoRoutes.gr.dart';
import 'package:auto_route/auto_route.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AutoRoutes extends $AutoRoutes {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: Dashboard.page, initial: true),
      ];
}
