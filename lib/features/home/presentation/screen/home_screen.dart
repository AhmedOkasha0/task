import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:task/core/themes/app_colors.dart';
import 'package:task/features/home/presentation/widgets/boady.dart';
import 'package:task/features/home/presentation/widgets/header.dart';
import 'package:task/features/home/presentation/widgets/more_detalis.dart';
import 'package:task/features/home/presentation/widgets/payment_detalis.dart';
import 'package:task/features/home/presentation/widgets/seller_row_widget.dart';

import '../../../../core/common/widgets/custom_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding:
            EdgeInsets.only(top: 48.h, left: 16.w, right: 16.w, bottom: 40.h),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Header(),
              SizedBox(height: 14.h),
              const HomeBody(),
              Gap(30.h),
              const SellerBuyerRow(),
              Gap(10.h),
              const MoreDetails(),
              Gap(10.h),
              const PaymentDetails(),
              Gap(18.h),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomButton(
                    width: 157,
                    hight: 41,
                    text: "الغاء الطلب",
                    backgroundColor: AppColors.cCE090C,
                    borderColor: AppColors.cCE090C,
                  ),
                  CustomButton(
                    width: 157,
                    hight: 41,
                    text: "ادفع",
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
