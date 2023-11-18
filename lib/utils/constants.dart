import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

String BASE_URL = "https://astro.diploy.in/api/";
String BASE_IMAGE_URL = "https://astro.diploy.in/";

String CreateImageUrl(String imageUrl) {
  debugPrint('return url is-- > ${BASE_IMAGE_URL + imageUrl}');
  return BASE_IMAGE_URL + imageUrl;
}

String bearerToken =
    'eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL2JoYXZpc2h5YWFzdHJvLmNvbS9hZG1pbi9hcGkvbG9naW5BcHBVc2VyIiwiaWF0IjoxNjk4NDIxNDY0LCJleHAiOjE2OTg2Mzc0NjQsIm5iZiI6MTY5ODQyMTQ2NCwianRpIjoiMzRMWkt6UDljekdCNzRWNyIsInN1YiI6IjU0NCIsInBydiI6IjIzYmQ1Yzg5NDlmNjAwYWRiMzllNzAxYzQwMDg3MmRiN2E1OTc2ZjcifQ.uBe9ckcfh8Z_t8DvIEnvt1GLRB8Nful2hqgMkovq78I';

ButtonStyle CustombuttonStyle = ButtonStyle(
  backgroundColor: MaterialStateProperty.all<Color>(Colors.orange),
  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
    RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(4.w),
    ),
  ),
);

void showCustomSnackBar(BuildContext context, String message) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      content: Text(message),
    ),
  );
}
