import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class Errowidget extends StatelessWidget {
  Errowidget({
    super.key,
    required this.state,
    required this.size,
  });
  String state;
  int size;
  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      children: [
        SizedBox(
          height: size.h,
          child: Icon(
            Icons.error,
            color: Colors.red,
            size: 25.sp,
          ),
        ),
        Text(
          state,
          style: const TextStyle().copyWith(
              fontWeight: FontWeight.bold, fontSize: 14.sp, color: Colors.red),
        )
      ],
    ));
  }
}
