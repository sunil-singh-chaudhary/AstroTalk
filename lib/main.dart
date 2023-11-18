import 'package:astrotalk_project/feature_homepage/repository/server/api_RepositoryImpl.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_bloc.dart';
import 'package:astrotalk_project/routes/AutoRoutes.dart';
import 'package:astrotalk_project/themes/app_bar_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    AutoRoutes route = AutoRoutes();
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => BannerBloc(userRepository: ApiRepositoryImpl()),
        ),
        BlocProvider(
          create: (context) => AstroBloc(userRepository: ApiRepositoryImpl()),
        ),
      ],
      child: Sizer(
        builder: (context, orientation, deviceType) => MaterialApp.router(
          title: 'Astro Talk',
          theme: CustomTheme.getAppTheme(),
          routerConfig: route.config(),
        ),
      ),
    );
  }
}
