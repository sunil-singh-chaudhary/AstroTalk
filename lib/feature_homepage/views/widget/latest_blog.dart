import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/bannerbloc/banner_state.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/listview.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/title_latest_heading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class LatestBlog extends StatefulWidget {
  const LatestBlog({super.key});

  @override
  State<LatestBlog> createState() => _LatestBlogState();
}

class _LatestBlogState extends State<LatestBlog> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const TitleLatestBlogWidget(), //heihgt 3.h
        SizedBox(
          height: 1.h,
        ),
        Container(
          margin: EdgeInsets.only(left: 5.w, right: 5.w),
          width: double.infinity,
          height: 21.h,
          child:
              BlocBuilder<BannerBloc, BannerState>(builder: (context, state) {
            if (state is BannerSuccess) {
              var response = state.response;

              return ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: response.blog.length,
                itemBuilder: (context, index) {
                  final extension = response.blog[index].blogImage
                      .split('.')
                      .last
                      .toLowerCase();
                  debugPrint('extension --> $extension');

                  return ListViewWidget(
                      index: index, extension: extension, response: response);
                },
              );
            } else if (state is BannerLoading) {
              // Handle loading state
              return const Center(child: CircularProgressIndicator.adaptive());
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
          }),
        ),
      ],
    );
  }
}
