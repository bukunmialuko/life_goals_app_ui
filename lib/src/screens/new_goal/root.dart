import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:life_goals_app/src/res/asset_images.dart';
import 'package:life_goals_app/src/res/colors.dart';
import 'package:life_goals_app/src/res/font_family.dart';

class NewGoalRoot extends StatefulWidget {
  const NewGoalRoot({Key? key}) : super(key: key);

  @override
  _NewGoalRootState createState() => _NewGoalRootState();
}

class _NewGoalRootState extends State<NewGoalRoot> {
  final _formKey = GlobalKey<FormState>();

  final titleController = TextEditingController();
  final descriptionController = TextEditingController();
  final reminderController = TextEditingController();
  final maturityDateController = TextEditingController();

  @override
  void initState() {
    super.initState();
    titleController.text = 'Water consumption';
    descriptionController.text = 'Drink 5 cup water';
    reminderController.text = 'Every Day';
    maturityDateController.text = '12 Months';
  }

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
                  Container(
                    margin: EdgeInsets.only(left: 16.w),
                    child: Text(
                      "New Goal",
                      style: TextStyle(
                        color: AppColors.customBlack,
                        fontWeight: FontWeight.w600,
                        fontSize: 24.sp,
                      ),
                    ),
                  ),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(10.r),
                    child: Container(
                      margin: EdgeInsets.only(right: 16.w),
                      width: 53.r,
                      height: 53.r,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18.r),
                        color: AppColors.lightBlue,
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          AssetResources.CROSS,
                          height: 24.r,
                          width: 24.r,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Expanded(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(
                    parent: AlwaysScrollableScrollPhysics()),
                child: Column(
                  children: [
                    Container(
                      margin:
                          EdgeInsets.only(left: 16.w, right: 16.w, top: 20.h),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            _buildFormField(
                              title: 'Goal Title',
                              value: 'Water consumption',
                              controller: titleController,
                            ),
                            _buildFormField(
                              title: 'Goal Description',
                              value: 'Drink 5 cup water',
                              controller: descriptionController,
                            ),
                            _buildFormField(
                              title: 'Reminder',
                              value: 'Every Day',
                              controller: reminderController,
                            ),
                            _buildFormField(
                              title: 'Maturity Date',
                              value: '12 Months',
                              controller: maturityDateController,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.w,
                        right: 16.w,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                                right: 16.w, bottom: 20.h, top: 23.h),
                            child: Text(
                              "Goal Preview",
                              style: TextStyle(
                                color: AppColors.customBlack,
                                fontWeight: FontWeight.w600,
                                fontSize: 24.sp,
                              ),
                            ),
                          ),
                          Card(
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
                                    Expanded(
                                      child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.center,
                                        children: [
                                          SizedBox(height: 19.h),
                                          Text(
                                            "Learn new skill",
                                            style: TextStyle(
                                              color: AppColors.customBlack,
                                              fontWeight: FontWeight.w400,
                                              fontSize: 14.sp,
                                            ),
                                          ),
                                          Text(
                                            "Learn new skill",
                                            style: TextStyle(
                                              color: AppColors.customBlack,
                                              fontWeight: FontWeight.w300,
                                              fontSize: 12.sp,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
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
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  _buildFormField(
      {required String title,
      required String value,
      required TextEditingController controller}) {
    return Container(
      padding: EdgeInsets.only(left: 16.w, right: 16.w),
      margin: EdgeInsets.only(bottom: 16.h),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18.r),
        color: AppColors.lightBlue,
      ),
      child: TextFormField(
        controller: controller,
        decoration: InputDecoration(
          border: InputBorder.none,
          labelText: title,
          labelStyle: TextStyle(
            fontFamily: FontFamily.nunito,
            color: AppColors.grey2,
            fontWeight: FontWeight.w400,
            fontSize: 14.sp,
          ),
        ),
      ),
    );
  }
}
