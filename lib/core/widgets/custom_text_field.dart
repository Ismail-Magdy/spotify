import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.obscureText,
    required this.hintText,
    this.isEye = false,
    required this.keyboardType,
    this.suffixIcon = const SizedBox.shrink(),
  });

  final TextEditingController controller;
  final bool obscureText;
  final String hintText;
  final bool isEye;
  final TextInputType? keyboardType;
  final Widget suffixIcon;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isAppear = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      cursorErrorColor: AppColors.redColor,
      cursorWidth: AppSizes.w2,
      keyboardType: widget.keyboardType,
      maxLines: 1,
      obscureText: widget.obscureText,
      textAlignVertical: .center,
      enabled: true,
      style: TextStyle(
        overflow: .ellipsis,
        color: AppColors.blackTextColor,
        fontWeight: FontWeightHelper.bold,
        fontSize: AppSizes.sp16,
        fontFamily: AppStrings.fontFamily,
      ),
      decoration: InputDecoration(
        contentPadding: .symmetric(
          vertical: AppSizes.h30,
          horizontal: AppSizes.w20,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.greyTextColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.redColor),
        ),
        hintText: widget.hintText,
        hintStyle: TextStyle(
          fontFamily: AppStrings.fontFamily,
          color: AppColors.greyTextColor,
        ),
        suffixIcon: widget.suffixIcon,
        border: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: BorderSide(color: AppColors.greyColor),
        ),
      ),
    );
  }
}
