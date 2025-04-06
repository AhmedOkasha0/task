import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';
import 'package:task/features/home/presentation/widgets/tracking.dart';

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Container(
                  alignment: Alignment.center,
                  height: 52.h,
                  width: 52.w,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: AppColors.c5AB0F7),
                  child: SvgPicture.asset(
                    "assets/icons/book.svg",
                    height: 20.h,
                    width: 20.w,
                  ),
                ),
                Gap(5.w),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "حاله البيع",
                      style: AppStyles.textStyle(
                          size: 12,
                          weight: FontWeight.w400,
                          color: AppColors.c757575),
                    ),
                    Text("نشط",
                        style: AppStyles.textStyle(
                            size: 12,
                            weight: FontWeight.w400,
                            color: AppColors.c5AB0F7))
                  ],
                ),
              ],
            ),
            Row(
              children: [
                Column(
                  children: [
                    Text(
                      "ايفون 16 -256 جيجا",
                      style: AppStyles.textStyle(
                          size: 20,
                          weight: FontWeight.w400,
                          color: Colors.black),
                    ),
                    Text(
                      "الخميس،07 نوفامبر 2024",
                      style: AppStyles.textStyle(
                          size: 14,
                          weight: FontWeight.w400,
                          color: AppColors.c757575),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
        Gap(10.h),
        StepTracker(),
        Gap(10.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              alignment: Alignment.center,
              height: 56.h,
              width: 56.w,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(.25),
                      blurRadius: 4,
                      spreadRadius: 0,
                      offset: const Offset(0, 4),
                    ),
                  ]),
              child: SvgPicture.asset("assets/icons/chat.svg"),
            ),
            Text(
              "تفاصيل المنتج/خدمه",
              style: AppStyles.textStyle(
                  size: 20, weight: FontWeight.w400, color: Colors.black),
            ),
          ],
        ),
        Gap(4.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  "محتاج ايفون ١٦ برو ٢٥٦ جيجا لون ازرق يكون جديد",
                  style: AppStyles.textStyle(
                      size: 14,
                      weight: FontWeight.w400,
                      color: AppColors.c757575),
                ),
                Gap(17.h),
                Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: 8.w, vertical: 6.h),
                    width: 120.w,
                    height: 30.h,
                    decoration: BoxDecoration(
                        color: AppColors.cD4E6F9,
                        borderRadius: BorderRadius.circular(8.r)),
                    child: Row(
                      children: [
                        Expanded(
                          child: Center(
                            child: Text(
                              "5",
                              style: AppStyles.textStyle(
                                size: 16,
                                color: Colors.black,
                              ),
                            ),
                          ),
                        ),
                        // This will push "الكمية" to the end (right side)
                        Text(
                          "الكمية",
                          style: AppStyles.textStyle(
                            size: 16,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
