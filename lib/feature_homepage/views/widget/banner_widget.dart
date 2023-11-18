import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_state.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/errorwidget.dart';
import 'package:astrotalk_project/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BannerBloc, BannerState>(
      builder: (context, state) {
        if (state is BannerSuccess) {
          // State is in a success state, access state data
          final data = state.response;
          debugPrint(
              'image url -- $BASE_IMAGE_URL${data.banner[0].bannerImage}');
          // Build your UI based on the state data
          return SizedBox(
            height: 15.h,
            width: double.infinity,
            child: PageView.builder(
              itemCount: data.banner.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Container(
                  margin: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(2.w),
                    child: CachedNetworkImage(
                      errorWidget: (context, url, error) => const Center(
                        child: Icon(
                          Icons.error,
                          color: Colors.red,
                        ),
                      ),
                      placeholder: (context, url) => const Center(
                        child: CupertinoActivityIndicator(),
                      ),
                      key: UniqueKey(),
                      imageUrl: CreateImageUrl(data.banner[index].bannerImage),
                      imageBuilder: (context, imageProvider) {
                        return Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                          image: imageProvider,
                        )));
                      },
                    ),
                  ),
                );
              },
            ),
          );
        } else if (state is BannerLoading) {
          // Handle loading state
          return const Center(child: CircularProgressIndicator());
        } else if (state is BannerError) {
          // Handle error state
          debugPrint('error ${state.msg}');
          return Center(
              child: Text(
            "Api not working ,",
            style: TextStyle(
                color: Colors.red,
                fontSize: 12.sp,
                fontWeight: FontWeight.bold),
          ));
        } else {
          return const Center(child: Text("No data available. "));
        }
      },
    );
  }
}
