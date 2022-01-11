import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_goals_app/src/res/asset_images.dart';
import 'package:life_goals_app/src/res/colors.dart';
import 'package:life_goals_app/src/screens/new_goal/root.dart';

class RootWidget extends StatelessWidget {
  const RootWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const NewGoalRoot(),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Container(
            child: SafeArea(
              child: SizedBox(
                height: 90.h,
                child: Stack(
                  fit: StackFit.loose,
                  children: [
                    Container(
                      height: 72.h,
                      decoration: const BoxDecoration(
                        boxShadow: [
                          // BoxShadow(
                          //   color: Color(0xffF5F8FF),
                          //   blurRadius: 2,
                          //   spreadRadius: 0,
                          //   offset: Offset(0, 0),
                          // )
                        ],
                      ),
                      margin: EdgeInsets.only(top: 20.h),
                      child: Card(
                        elevation: 0,
                        color: Colors.white,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Expanded(
                              child: Center(
                                // height: 72.h,
                                // color: Colors.red,
                                child: SvgPicture.asset(
                                  AssetResources.HOME,
                                  height: 25.r,
                                  width: 25.r,
                                  // fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 72.h,
                              width: 72.w,
                            ),
                            Expanded(
                              child: Center(
                                // height: 72.h,
                                // width: 72.h,
                                // color: Colors.blue,
                                child: SvgPicture.asset(
                                  AssetResources.BELL_BADGE,
                                  height: 25.r,
                                  width: 25.r,
                                  // fit: BoxFit.fill,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 72.r,
                        height: 72.r,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(72.r),
                          // color: Colors.red,
                        ),
                        child: Container(
                          width: 60.r,
                          height: 60.r,
                          decoration: BoxDecoration(
                            color: AppColors.purple,
                            borderRadius: BorderRadius.circular(60.r),
                            // color: Colors.red,
                          ),
                          child: SizedBox(
                            height: 34.r,
                            width: 34.r,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: SvgPicture.asset(
                                AssetResources.CHECK,
                                height: 34.r,
                                width: 34.r,
                                // fit: BoxFit.fitWidth,
                              ),
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ))
        ],
      ),
    );
  }
}
