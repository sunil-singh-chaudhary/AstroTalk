import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_bloc.dart';
import 'package:astrotalk_project/feature_homepage/viewmodel/bloc/astrobloc/astro_state.dart';
import 'package:astrotalk_project/utils/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sizer/sizer.dart';

class AstroList extends StatelessWidget {
  const AstroList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 5.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.only(left: 5.w, right: 5.w),
                child: Text(
                  'AstroLogers',
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
                  child: const Text(
                    'View All',
                    style: TextStyle(color: Colors.green),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 4.w, right: 4.w),
          height: 25.h,
          width: double.infinity,
          child: BlocBuilder<AstroBloc, AstroState>(builder: (context, state) {
            if (state is AstroSuccess) {
              var response = state.response;

              return ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: response.totalCount,
                  itemBuilder: (context, index) {
                    return SizedBox(
                      width: 25.h,  
                      height: 25.h,    // heigh1t 25
                      child: Card(
                        elevation: 2,
                        shadowColor: Colors.grey,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(2.w)),
                        color: const Color(0xFFfffeff),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            SizedBox(              // heigh1t 1
                              height: 1.h,
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1.h),
                              height: 9.h,                          // heigh1t 10
                              width: 9.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(2.w),
                                border: Border.all(
                                  color: Colors.orange,
                                  width: 1.0, 
                                ),
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(2.w),
                                child: CachedNetworkImage(
                                  errorWidget: (context, url, error) =>
                                      const Center(
                                    child: Icon(
                                      Icons.error,
                                      color: Colors.red,
                                    ),
                                  ),
                                  placeholder: (context, url) => const Center(
                                    child: CupertinoActivityIndicator(),
                                  ),
                                  imageUrl:
                                      response.recordList[index].profileImage !=
                                              null
                                          ? CreateImageUrl(response
                                              .recordList[index].profileImage!)
                                          : '',
                                  key: UniqueKey(),
                                  imageBuilder: (context, imageProvider) {
                                    return Container(
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                      image: imageProvider,
                                    )));
                                  },
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 2.5.h,                     // heigh1t 2
                              child: Center(
                                  child: Text(
                                response.recordList[index].name!,
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              )),
                            ),

                            SizedBox(                         // heigh1t 2
                              height: 2.5.h,
                              child: Center(
                                  child: Text(
                                '₹ ${response.recordList[index].charge}/min',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 12.sp),
                              )),
                            ),
                            SizedBox(height: 1.h,),           // heigh1t 1
                            SizedBox(                        // heigh1t 4
                              width: 17.h,
                              height: 4.h,
                              child: ElevatedButton(
                                style: ButtonStyle(
                                    backgroundColor:
                                        MaterialStateProperty.all<Color>(
                                            Colors.white),
                                    shape: MaterialStateProperty.all<
                                        OutlinedBorder>(
                                      RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(1.h),
                                      ),
                                    ),
                                    side: MaterialStateProperty.all<BorderSide>(
                                      const BorderSide(
                                        color: Colors.green,
                                        width: 1.0,
                                      ),
                                    )),
                                onPressed: () {},
                                child: SizedBox(
                                  height: 5.h,
                                  child: Center(
                                    child: Text(
                                      'Connect',
                                      style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                          color: Colors.green, fontSize: 12.sp),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    );
                  });
            } else if (state is AstroLoading) {
              // Handle loading state
              return const Center(child: CircularProgressIndicator());
            } else if (state is AstroError) {
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
        )
      ],
    );
  }
}
