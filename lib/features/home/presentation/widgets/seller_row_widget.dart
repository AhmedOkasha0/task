import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/core/themes/styles.dart';

class SellerBuyerRow extends StatelessWidget {
  const SellerBuyerRow({super.key});

  @override
  Widget build(BuildContext context) {
    PageController pageController = PageController();

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "انت",
                      style: AppStyles.textStyle(
                        size: 11,
                        weight: FontWeight.w400,
                        color: AppColors.c868686,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      "محمد محمود",
                      style: AppStyles.textStyle(
                        size: 14,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      alignment: Alignment.center,
                      width: 60.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: Colors.orange,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: SvgPicture.asset(
                              "assets/icons/cart.svg",
                              height: 12.h,
                              width: 12.w,
                            ),
                          ),
                          const SizedBox(width: 4),
                          Center(
                            child: Text(
                              "البائع",
                              style: AppStyles.textStyle(
                                  color: Colors.white, size: 11),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 24,
                  backgroundColor: Colors.orange,
                  child: Padding(
                    padding: EdgeInsets.all(2.0.r),
                    child: CircleAvatar(
                      radius: 22.r,
                      backgroundImage: AssetImage(
                          'assets/images/singer.png'), // Replace with your asset
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 32),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "محمد محمود",
                      style: AppStyles.textStyle(
                        size: 14,
                        weight: FontWeight.w400,
                        color: Colors.black,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Container(
                      alignment: Alignment.center,
                      width: 60.w,
                      padding:
                          EdgeInsets.symmetric(horizontal: 8.w, vertical: 4.h),
                      decoration: BoxDecoration(
                        color: AppColors.c1B85F3,
                        borderRadius: BorderRadius.circular(12.r),
                      ),
                      child: Row(
                        children: [
                          Expanded(
                            child: Text(
                              "البائع",
                              style: AppStyles.textStyle(
                                  color: Colors.white, size: 11),
                            ),
                          ),
                          const SizedBox(width: 4),
                          Center(
                            child: SvgPicture.asset(
                              "assets/icons/cart.svg",
                              height: 12.h,
                              width: 12.w,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(width: 8),
                CircleAvatar(
                  radius: 24.r,
                  backgroundColor: Colors.blue,
                  child: Padding(
                    padding: EdgeInsets.all(2.0.r),
                    child: CircleAvatar(
                      radius: 22.r,
                      backgroundImage: AssetImage(
                          'assets/images/singer.png'), // Replace with your asset
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(width: 16),
        Container(
          width: 2,
          height: 140,
          color: Colors.blue.shade200,
        ),
        const SizedBox(width: 16),
        Column(
          children: [
            Container(
              height: 107.h,
              width: 156.w,
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    spreadRadius: 0,
                    blurRadius: 4,
                    offset: const Offset(0, 4), // changes position of shadow
                  ),
                ],
                borderRadius: BorderRadius.circular(4.r),
              ),
              child: PageView.builder(
                itemBuilder: (context, index) {
                  return Container(
                    width: 120,
                    height: 100,
                    decoration: BoxDecoration(),
                    child: Image.asset(
                      'assets/images/item.jpg',
                      height: 99.h,
                      width: 199.w,
                    ),
                  );
                },
                controller: pageController,
                itemCount: 3,
              ),
            ),
            Gap(12.h),
            SmoothPageIndicator(
              controller: pageController,
              count: 3,
              effect: ExpandingDotsEffect(
                  dotHeight: 10.h,
                  dotWidth: 12.w,
                  activeDotColor: AppColors.cFFC542,
                  dotColor: AppColors.cD9DFE6),
            ),
          ],
        ),
      ],
    );
  }
}
