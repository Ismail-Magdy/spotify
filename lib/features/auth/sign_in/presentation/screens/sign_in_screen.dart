import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_app_bar_for_auth.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForAuth(),
      body: Center(
        child: Column(
          children: [
            //
            verticalSpace(80),
            //
            CustomText(
              text: "Sign in",
              color: AppColors.blackTextColor,
              size: AppSizes.sp30,
              weight: FontWeightHelper.bold,
            ),
            //
            verticalSpace(22),
            //
            Row(
              mainAxisAlignment: .center,
              children: [
                CustomText(
                  text: "If You Need Any Support",
                  color: AppColors.blackTextColor,
                  size: AppSizes.sp12,
                  weight: FontWeightHelper.regular,
                ),
                CustomText(
                  text: " Click Here",
                  color: AppColors.primaryColor,
                  size: AppSizes.sp14,
                  weight: FontWeightHelper.regular,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
