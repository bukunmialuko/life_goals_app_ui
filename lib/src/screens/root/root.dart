import 'package:convex_bottom_bar/convex_bottom_bar.dart';
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
      body: Stack(
        alignment: AlignmentDirectional.topCenter,
        children: [
          ListView.builder(itemBuilder: (_, index) => Text('$index')),
          // Align(
          //   alignment: Alignment.bottomCenter,
          //   child: Container(
          //     color: Colors.transparent,
          //     height: 90.h,
          //     child: Stack(
          //       alignment: AlignmentDirectional.topCenter,
          //       children: [
          //         Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Container(
          //             height: 72.h,
          //             decoration: const BoxDecoration(
          //               color: Colors.white,
          //             ),
          //           ),
          //         ),
          //         Align(
          //           alignment: Alignment.bottomCenter,
          //           child: Container(
          //             height: 72.r,
          //             decoration: BoxDecoration(
          //               color: Colors.white,
          //               boxShadow: [
          //                 BoxShadow(
          //                   offset: const Offset(0, -2),
          //                   color: Colors.black.withOpacity(.075),
          //                   blurRadius: 4,
          //                 ),
          //               ],
          //             ),
          //           ),
          //         ),
          //         Stack(
          //           children: [
          //             Container(
          //               height: 90.h,
          //               // padding: const EdgeInsets.all(7),
          //               decoration: BoxDecoration(
          //                 color: Colors.white,
          //                 shape: BoxShape.circle,
          //                 boxShadow: [
          //                   BoxShadow(
          //                     offset: const Offset(0, -4),
          //                     color: Colors.black.withOpacity(.075),
          //                     blurRadius: 4,
          //                   )
          //                 ],
          //               ),
          //             ),
          //             Align(
          //               alignment: Alignment.bottomCenter,
          //               child: Container(
          //                 height: 72.h,
          //                 width: 100.w,
          //                 decoration: const BoxDecoration(
          //                   color: Colors.white,
          //                 ),
          //               ),
          //             ),
          //             Align(
          //               alignment: Alignment.bottomCenter,
          //               child: Container(
          //                   // padding: EdgeInsets.only(bottom: 16),
          //                   margin: EdgeInsets.only(bottom: 23.h),
          //                   height: 60.r,
          //                   width: 60.r,
          //                   child: FloatingActionButton(
          //                     elevation: 0,
          //                     backgroundColor: const Color(0xFF7B61FF),
          //                     onPressed: () {},
          //                     child: const Icon(
          //                       Icons.add,
          //                       color: Colors.white,
          //                     ),
          //                   )),
          //             ),
          //           ],
          //         )
          //       ],
          //     ),
          //   ),
          // ),
        ],
      ),
      bottomNavigationBar: Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          color: Colors.transparent,
          height: 90.h,
          child: Stack(
            alignment: AlignmentDirectional.topCenter,
            children: [
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 72.h,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Container(
                  height: 72.r,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        offset: const Offset(0, -2),
                        color: Colors.black.withOpacity(.075),
                        blurRadius: 4,
                      ),
                    ],
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    height: 90.h,
                    // padding: const EdgeInsets.all(7),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          offset: const Offset(0, -4),
                          color: Colors.black.withOpacity(.075),
                          blurRadius: 4,
                        )
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 72.h,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        // padding: EdgeInsets.only(bottom: 16),
                        margin: EdgeInsets.only(bottom: 23.h),
                        height: 60.r,
                        width: 60.r,
                        child: FloatingActionButton(
                          elevation: 0,
                          backgroundColor: const Color(0xFF7B61FF),
                          onPressed: () {},
                          child: const Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        )),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
