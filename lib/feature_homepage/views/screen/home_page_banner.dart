import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_event.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_event.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/astrolist.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/banner_widget.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/bottombuttons.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/latest_blog.dart';
import 'package:flutter/material.dart';
import 'package:auto_route/annotations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

@RoutePage(name: 'HomePageBanner')
class HomePageBanner extends StatefulWidget {
  const HomePageBanner({super.key});

  @override
  State<HomePageBanner> createState() => _HomePageBannerState();
}

class _HomePageBannerState extends State<HomePageBanner> {
  late final bannerbloc, astrobloc;
  @override
  void initState() {
    super.initState();
    debugPrint('init bloc');
    bannerbloc = context.read<BannerBloc>();
    bannerbloc.add(FetchBanner()); //initialize banner api call

    astrobloc = context.read<AstroBloc>();
    astrobloc.add(FetchAstro()); //initialize astro api call
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(top: 1.h),
          child: Column(children: [
            const BannerWidget(),
            //15 h
            SizedBox(
              height: 2.h,
            ),
            SizedBox(
              width: double.infinity,
              height: 30.h,
              child: const AstroList(),
            ),
            SizedBox(
              height: 25.h,
              child: const LatestBlog(),
            ),
            Container(
                height: 7.h,
                width: double.infinity,
                margin: EdgeInsets.only(left: 5.w, right: 5.w),
                child: const bottomButtonWidget()),
          ]),
        ),
      ),
    );
  }
}
