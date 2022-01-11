import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:life_goals_app/src/res/asset_images.dart';
import 'package:life_goals_app/src/res/colors.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, bottom: 47.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      margin: EdgeInsets.only(left: 16.w),
                      width: 53.r,
                      height: 53.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        color: AppColors.lightBlue,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AssetResources.APP,
                          height: 24.r,
                          width: 24.r,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  Text(
                    "DON’T GIVE UP",
                    style: TextStyle(
                      color: AppColors.purple,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      margin: EdgeInsets.only(right: 16.w),
                      width: 53.r,
                      height: 53.r,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(AssetResources.PROFILE),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w, right: 16.w, bottom: 20.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "2 Big Challenges",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 24.sp,
                    ),
                  ),
                  Text(
                    "Ambitious person aren't you?",
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 16.sp,
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16.w),
                child: ListView(
                  children: [
                    SizedBox(
                      height: 200.h,
                      // width: 359.w,
                      child: ListView.separated(
                        physics: const BouncingScrollPhysics(
                            parent: AlwaysScrollableScrollPhysics()),
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        itemBuilder: (c, i) {
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(10.r),
                            child: Container(
                              // margin: EdgeInsets.only(left: 16.w),
                              width: 171.5.r,
                              height: 200.h,
                              decoration: const BoxDecoration(
                                // borderRadius: BorderRadius.circular(18.r),
                                color: AppColors.lightBlue,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: EdgeInsets.only(
                                        left: 20.w, right: 20.w, top: 20.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SvgPicture.asset(
                                          AssetResources.TIMER,
                                          height: 50.r,
                                          width: 50.r,
                                          fit: BoxFit.cover,
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "Lifestyle",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 18.sp,
                                          ),
                                        ),
                                        SizedBox(height: 4.h),
                                        Text(
                                          "Become a morning person",
                                          style: TextStyle(
                                            color: Colors.black,
                                            fontWeight: FontWeight.w500,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                        left: 20.w, right: 20.w, bottom: 12.h),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.min,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Reminder",
                                          style: TextStyle(
                                            color: AppColors.grey2,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                        SizedBox(height: 2.h),
                                        Text(
                                          "Every Day",
                                          style: TextStyle(
                                            color: AppColors.grey2,
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10.sp,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return SizedBox(
                            width: 16.w,
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
