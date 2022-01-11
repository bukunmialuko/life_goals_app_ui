import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:life_goals_app/src/res/asset_images.dart';
import 'package:life_goals_app/src/res/colors.dart';
import 'package:life_goals_app/src/res/font_family.dart';

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
              padding: EdgeInsets.only(top: 20.h, bottom: 20.h),
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
                padding: EdgeInsets.only(
                  left: 16.w,
                  right: 16.w,
                ),
                child: ListView(
                  shrinkWrap: true,
                  physics: const BouncingScrollPhysics(
                      parent: AlwaysScrollableScrollPhysics()),
                  children: [
                    Padding(
                      padding: EdgeInsets.only(
                          left: 16.w, right: 16.w, bottom: 20.h, top: 27.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "2 Big Challenges",
                            style: TextStyle(
                              color: AppColors.customBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                            ),
                          ),
                          Text(
                            "Ambitious person aren't you?",
                            style: TextStyle(
                              color: AppColors.customBlack,
                              fontFamily: FontFamily.nunito,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
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
                    Padding(
                      padding:
                          EdgeInsets.only(right: 16.w, bottom: 20.h, top: 30.h),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Today’s Planning",
                            style: TextStyle(
                              color: AppColors.customBlack,
                              fontWeight: FontWeight.w600,
                              fontSize: 24.sp,
                            ),
                          ),
                          Text(
                            "You have 3 actions to do",
                            style: TextStyle(
                              color: AppColors.customBlack,
                              fontFamily: FontFamily.nunito,
                              fontWeight: FontWeight.w600,
                              fontSize: 16.sp,
                            ),
                          ),
                        ],
                      ),
                    ),
                    ListView.separated(
                      physics: const NeverScrollableScrollPhysics(),
                      scrollDirection: Axis.vertical,
                      shrinkWrap: true,
                      itemCount: 20,
                      itemBuilder: (c, i) {
                        return Card(
                          color: AppColors.lightBlue,
                          shadowColor: AppColors.shadow,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.r),
                          ),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 11.r,
                                      right: 8.r,
                                      top: 11.r,
                                      bottom: 11.r,
                                    ),
                                    child: Center(
                                      child: SvgPicture.asset(
                                        AssetResources.BULB,
                                        height: 53.r,
                                        width: 53.r,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                  Expanded(child: Container()),
                                  Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 7.r, vertical: 7.r),
                                    child: SvgPicture.asset(
                                      AssetResources.MORE,
                                      height: 24.r,
                                      width: 24.r,
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ],
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 11.r,
                                      right: 11.r,
                                    ),
                                    child: Divider(
                                      height: 2.h,
                                      color: AppColors.border,
                                    ),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(
                                      left: 11.r,
                                      right: 8.r,
                                      top: 3.h,
                                      bottom: 3.r,
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      children: [
                                        Padding(
                                          padding: EdgeInsets.only(
                                            left: 16.r,
                                            right: 22.r,
                                          ),
                                          child: SvgPicture.asset(
                                            AssetResources.CLOCK,
                                            height: 24.r,
                                            width: 24.r,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Text(
                                          "Deadline",
                                          style: TextStyle(
                                            color: AppColors.customBlack,
                                            fontWeight: FontWeight.w300,
                                            fontSize: 12.sp,
                                          ),
                                        ),
                                        SizedBox(width: 16.w),
                                        Expanded(
                                          child: Text(
                                            "06 January 2022",
                                            style: TextStyle(
                                              color: AppColors.customBlack,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: EdgeInsets.only(
                                            right: 2.r,
                                          ),
                                          child: SvgPicture.asset(
                                            AssetResources.CARET_DOWN,
                                            height: 24.r,
                                            width: 24.r,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) {
                        return SizedBox(
                          width: 12.h,
                        );
                      },
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
