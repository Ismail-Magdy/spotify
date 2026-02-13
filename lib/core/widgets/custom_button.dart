import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.onPressed});
  final String text;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      color: AppColors.primaryColor,
      minWidth: .infinity,
      height: AppSizes.h92,
      shape: RoundedRectangleBorder(borderRadius: .circular(AppSizes.sp30)),
      onPressed: onPressed,
      child: CustomText(
        text: text,
        color: AppColors.whiteTextColor,
        size: AppSizes.sp22,
        weight: .bold,
      ),
    );
  }
}
