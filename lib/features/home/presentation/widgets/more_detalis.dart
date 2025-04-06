import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gap/gap.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';

class MoreDetails extends StatelessWidget {
  const MoreDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(
            "تفاصيل اضافيه",
            style: AppStyles.textStyle(
              size: 20,
              color: Colors.black,
              weight: FontWeight.w400,
            ),
          ),
          Gap(10.h),
          LayoutBuilder(
            builder: (context, constraints) {
              final itemWidth = (constraints.maxWidth - 16.w) / 2;
              return Column(
                children: [
                  // First row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildGridItem(
                        width: itemWidth,
                        icon: "assets/icons/cars.svg",
                        text1: "وسيله الشحن",
                        text2: "لا توجد وسيله شحن",
                      ),
                      _buildGridItem(
                        width: itemWidth,
                        icon: "assets/icons/cars.svg",
                        text1: "مده التوصيل",
                        text2: "5  ايام",
                      ),
                    ],
                  ),
                  Gap(13.h),
                  // Second row
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      _buildGridItem(
                        width: itemWidth,
                        icon: "assets/icons/cars.svg",
                        text1: "الرسوم",
                        text2: "البائع",
                      ),
                      _buildGridItem(
                        width: itemWidth,
                        icon: "assets/icons/cars.svg",
                        text1: "حاله الدفع",
                        text2: "مدفوع",
                      ),
                    ],
                  ),
                ],
              );
            },
          ),
        ],
      ),
    );
  }

  Widget _buildGridItem({
    required double width,
    required String icon,
    required String text1,
    required String text2,
  }) {
    return SizedBox(
      width: width,
      child: Row(
        textDirection: TextDirection.rtl,
        children: [
          Container(
            height: 37.h,
            width: 40.w,
            decoration: BoxDecoration(
              color: AppColors.cF0EFEF,
              borderRadius: BorderRadius.circular(4.r),
            ),
            child: Center(child: SvgPicture.asset(icon)),
          ),
          Gap(4.w),
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    text1,
                    style: AppStyles.textStyle(size: 12),
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    text2,
                    style: AppStyles.textStyle(size: 10),
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
