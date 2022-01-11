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
                              margin: EdgeInsets.only(left: 16.w),
                              width: 171.5.r,
                              height: 200.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(18.r),
                                color: AppColors.lightBlue,
                              ),
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      SvgPicture.asset(
                                        AssetResources.APP,
                                        height: 24.r,
                                        width: 24.r,
                                        fit: BoxFit.cover,
                                      ),
                                      SizedBox(height: 4.h),
                                      Text("Lifestyle"),
                                      SizedBox(height: 4.h),
                                      Text("Become a morning person"),
                                    ],
                                  ),
                                  Column(
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Text("Reminder"),
                                      SizedBox(height: 2.h),
                                      Text("Every Day"),
                                    ],
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
