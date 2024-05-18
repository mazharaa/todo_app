import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:todo_app/core/common/color_const.dart';
import 'package:todo_app/core/utils/text_theme_extension.dart';
import 'package:todo_app/core/utils/ui_helper.dart';

@RoutePage()
class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    final todoList = [
      'Learn programming by 12am',
      'Learn how to cook by 1pm',
      'Pick up the kids by 2pm',
      'have lunch at 3pm',
      'Go visit mum by 4pm',
      'Going home by 5pm',
      'Prepare for dinner by 6pm',
      'Have dinner with family at 7pm',
    ];
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: 375.w,
              height: 292.h,
              color: ColorConst.primary,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/imgs/shape_main_top.png',
              color: const Color(0xFFE5FFFC),
            ),
          ),
          Positioned(
            top: 134.h,
            left: 138.w,
            child: Image.asset(
              'assets/imgs/profile_picture.png',
            ),
          ),
          Positioned(
            top: 244.h,
            left: 35.w,
            child: SizedBox(
              height: 33.h,
              width: 304.67.w,
              child: Text(
                'Welcome Mary!',
                style: context.textTheme.displayLarge?.copyWith(
                  fontSize: 22.sp,
                  color: ColorConst.whiteColor,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Positioned(
            top: 340.h,
            left: 0,
            right: 0,
            bottom: 0,
            child: Padding(
              padding: UiHelper.padding(horizontal: 21.w, bottom: 23.h),
              child: IntrinsicWidth(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Image.asset(
                      'assets/imgs/clock.png',
                      width: 127.08.w,
                      height: 126.57.h,
                    ),
                    SizedBox(
                      height: 18.h,
                    ),
                    Text(
                      'Tasks List',
                      style: context.textTheme.displayLarge?.copyWith(
                        fontSize: 22.sp,
                      ),
                    ),
                    SizedBox(
                      height: 15.h,
                    ),
                    Expanded(
                      child: Container(
                        decoration: BoxDecoration(
                            color: ColorConst.whiteColor,
                            borderRadius:
                                UiHelper.borderRadiusCircular(all: 10.r),
                            border: Border.all(color: Colors.transparent),
                            boxShadow: const [
                              BoxShadow(
                                color: ColorConst.grey,
                                offset: Offset(0, 3),
                                blurRadius: 5,
                              )
                            ]),
                        padding: UiHelper.padding(
                          horizontal: 21.w,
                          top: 12.h,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  height: 26.h,
                                  child: Text(
                                    'Daily Tasks',
                                    style: context.textTheme.displayMedium
                                        ?.copyWith(
                                      fontSize: 17.sp,
                                    ),
                                  ),
                                ),
                                GestureDetector(
                                  child: Icon(
                                    Icons.add_circle_outline_rounded,
                                    color: ColorConst.primary,
                                    size: 26.h,
                                  ),
                                  onTap: () {},
                                )
                              ],
                            ),
                            SizedBox(
                              height: 28.h,
                            ),
                            Expanded(
                              child: Scrollbar(
                                child: ListView.builder(
                                  itemCount: todoList.length,
                                  padding: UiHelper.padding(top: 0),
                                  itemBuilder: (BuildContext build, int index) {
                                    return Padding(
                                      padding: UiHelper.padding(bottom: 14.h),
                                      child: Row(
                                        children: [
                                          Container(
                                            height: 17.h,
                                            width: 17.w,
                                            decoration: BoxDecoration(
                                              border: Border.all(width: 2.w),
                                            ),
                                          ),
                                          SizedBox(
                                            width: 11.w,
                                          ),
                                          Text(
                                            todoList[index],
                                            style: context.textTheme.titleSmall
                                                ?.copyWith(
                                              fontSize: 15.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    );
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
