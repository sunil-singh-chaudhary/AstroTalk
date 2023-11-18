import 'package:astrotalk_project/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class bottomButtonWidget extends StatelessWidget {
  const bottomButtonWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
        mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: ElevatedButton(
            style: CustombuttonStyle,
            onPressed: () {
              showCustomSnackBar(context, 'Chat with Astro');
            },
            child: Row(
              children: [
                SizedBox(
                    width: 1.w,
                    child: Icon(
                      Icons.message,
                      color: Colors.black,
                      size: 12.sp,
                    )),
                Container(
                  margin: EdgeInsets.only(left: 4.w, right: 4.w),
                  child: Text(
                    'Chat Astro',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
        SizedBox(
          width: 1.w,
        ),
        Expanded(

          child: ElevatedButton(
            style: CustombuttonStyle,
            onPressed: () {
              showCustomSnackBar(context, 'Call Astrologers');
            },
            child: Row(
              children: [
                SizedBox(
                    width: 1.w,
                    child: Icon(
                      Icons.call,
                      color: Colors.black,
                      size: 12.sp,
                    )),
                Container(
                  margin: EdgeInsets.only(left: 5.w, right: 5.w),
                  child: Text(
                    'Call Astro',
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 12.sp),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
