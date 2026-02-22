import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class CustomDivider extends StatelessWidget {
  const CustomDivider({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: .spaceBetween,
      children: [
        Container(
          width: AppSizes.w150,
          height: AppSizes.h1,
          decoration: BoxDecoration(color: AppColors.greyColor),
        ),
        CustomText(
          text: AppStrings.or,
          color: AppColors.blackTextColor,
          size: 14,
          weight: FontWeightHelper.regular,
        ),
        Container(
          width: AppSizes.w150,
          height: AppSizes.h1,
          decoration: BoxDecoration(color: AppColors.greyColor),
        ),
      ],
    );
  }
}
