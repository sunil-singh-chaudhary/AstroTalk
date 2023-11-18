import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class TitleLatestBlogWidget extends StatelessWidget {
  const TitleLatestBlogWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 3.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            margin: EdgeInsets.only(left: 5.w, right: 5.w),
            child: Text(
              'Latest Form Blog',
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 14.sp),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 5.w, right: 5.w),
            child: InkWell(
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('View All clicked')));
              },
              child: const Text('View All',
                  style: TextStyle(
                    color: Colors.green,
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
