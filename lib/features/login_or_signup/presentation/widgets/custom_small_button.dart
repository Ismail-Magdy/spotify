import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class CustomSmallButton extends StatelessWidget {
  const CustomSmallButton({
    super.key,
    required this.text,
    required this.textColor,
    required this.buttonColor,
    required this.isBorder,
    required this.onTap,
  });
  final String text;
  final Color textColor;
  final Color buttonColor;
  final bool isBorder;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: AppSizes.h73,
        width: AppSizes.w147,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: .circular(AppSizes.r30),
          border: .all(
            width: 2,
            color: isBorder
                ? AppColors.primaryColor
                : AppColors.transparentColor,
          ),
        ),
        child: Center(
          child: CustomText(
            text: text,
            color: textColor,
            size: AppSizes.sp19,
            weight: FontWeightHelper.medium,
          ),
        ),
      ),
    );
  }
}
