import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:task/core/themes/app_colors.dart';

class StepTracker extends StatelessWidget {
  const StepTracker({super.key});

  @override
  Widget build(BuildContext context) {
    final steps = [
      StepData("مكتمل", "assets/icons/time.svg", StepStatus.disabled),
      StepData("تم الشحن", "assets/icons/Group.svg", StepStatus.disabled),
      StepData("جاري التحضير", "assets/icons/Group.svg", StepStatus.disabled),
      StepData("تم قبول ", "assets/icons/Group.svg", StepStatus.active),
      StepData("قيد المراجعة", "assets/icons/Group.svg", StepStatus.disabled),
    ];

    return Padding(
      padding: EdgeInsets.symmetric(vertical: 16.h, horizontal: 8.w),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(steps.length, (index) {
          return Expanded(
            child: StepWidget(
              data: steps[index],
              isLast: index == steps.length - 1,
            ),
          );
        }),
      ),
    );
  }
}

enum StepStatus { active, completed, disabled }

class StepData {
  final String title;
  final String iconPath;
  final StepStatus status;

  StepData(this.title, this.iconPath, this.status);
}

class StepWidget extends StatelessWidget {
  final StepData data;
  final bool isLast;

  const StepWidget({
    required this.data,
    required this.isLast,
  });

  @override
  Widget build(BuildContext context) {
    Color iconColor;
    Color circleColor;
    Color textColor;
    Color lineColor;

    switch (data.status) {
      case StepStatus.active:
        circleColor = AppColors.c1B85F3;
        iconColor = Colors.white;
        textColor = AppColors.c1B85F3;
        lineColor = AppColors.c1B85F3;
        break;
      case StepStatus.completed:
        circleColor = Colors.green;
        iconColor = Colors.white;
        textColor = Colors.black;
        lineColor = Colors.green;
        break;
      case StepStatus.disabled:
      default:
        circleColor = AppColors.cBEC2BF;
        iconColor = Colors.white;
        textColor = Colors.grey;
        lineColor = Colors.grey;
        break;
    }

    return Column(
      children: [
        Stack(
          alignment: Alignment.center,
          children: [
            Row(
              children: [
                Expanded(child: Container(height: 2.h, color: lineColor)),
                if (!isLast)
                  Expanded(child: Container(height: 2.h, color: lineColor)),
              ],
            ),
            Container(
              alignment: Alignment.center,
              height: 35.h,
              width: 35.w,
              decoration: BoxDecoration(
                color: circleColor,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: SvgPicture.asset(
                  data.iconPath,
                  color: iconColor,
                  width: 24.w,
                  height: 24.h,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 6.h),
        Text(
          data.title,
          style: TextStyle(
            fontSize: 12.sp,
            color: textColor,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
