import 'package:astrotalk_project/feature_homepage/model/banner_model.dart';
import 'package:astrotalk_project/feature_homepage/views/widget/videowidget.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

import '../../../utils/constants.dart';

class ListViewWidget extends StatelessWidget {
  const ListViewWidget({
    super.key,
    required this.extension,
    required this.response,
    required this.index,
  });

  final String extension;
  final BannerModel response;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 60.w,
      height: 21.h,
      child: Card(
        child: Stack(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(4.w),
                  child: extension == 'jpg' ||
                          extension == 'jpeg' ||
                          extension == 'png'
                      ? Image.network(
                          height: 17.h,
                          width: 60.w,
                          CreateImageUrl(response.blog[index].blogImage),
                          fit: BoxFit.cover,
                        )
                      : VideoWidget(
                          videoUrl:
                              CreateImageUrl(response.blog[index].blogImage)),
                ),
                Container(
                  margin: EdgeInsets.only(left: 3.w),
                  height: 2.h,
                  width: double.infinity,
                  child: Text(
                    response.blog[index].title,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.normal,
                      fontSize: 10.sp,
                    ),
                  ),
                ),
              ],
            ),
            // Container at the top-right corner
            Positioned(
              top: 2.h,
              right: 1.h,
              child: Container(
                margin: const EdgeInsets.all(2),
                padding: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                  color: const Color(0xFFebe7e3),
                  borderRadius: BorderRadius.all(Radius.circular(1.h)),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.visibility,
                      color: Colors.black,
                      size: 12.sp,
                    ),
                    Text(
                      response.blog[index].viewer.toString(),
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 12.sp,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
