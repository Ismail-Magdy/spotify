import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    super.key,
    required this.controller,
    required this.hintText,
    this.isPassword = false,
    this.keyboardType,
    this.suffixIcon,
    this.validator,
  });

  final TextEditingController controller;
  final String hintText;
  final bool isPassword;
  final TextInputType? keyboardType;
  final Widget? suffixIcon;
  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool isObscure;

  @override
  void initState() {
    super.initState();
    isObscure = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autocorrect: false,
      controller: widget.controller,
      cursorColor: AppColors.primaryColor,
      cursorErrorColor: AppColors.redColor,
      cursorWidth: AppSizes.w2,
      keyboardType: widget.keyboardType,
      textInputAction: TextInputAction.next,
      maxLines: 1,
      obscureText: isObscure,
      textAlignVertical: .center,
      validator: widget.validator,
      enabled: true,
      //
      style: TextStyle(
        overflow: .ellipsis,
        color: AppColors.blackTextColor,
        fontWeight: FontWeightHelper.bold,
        fontSize: AppSizes.sp16,
        fontFamily: AppStrings.fontFamily,
      ),
      //
      decoration: InputDecoration(
        contentPadding: .symmetric(
          vertical: AppSizes.h30,
          horizontal: AppSizes.w20,
        ),
        //
        suffixIcon: widget.isPassword
            ? IconButton(
                icon: Icon(
                  isObscure ? Icons.visibility_off : Icons.visibility,
                  color: AppColors.greyTextColor,
                ),
                onPressed: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
              )
            : widget.suffixIcon,
        //
        enabledBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: const BorderSide(color: AppColors.greyColor),
        ),
        disabledBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: const BorderSide(color: AppColors.greyTextColor),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: .circular(AppSizes.r30),
          borderSide: const BorderSide(color: AppColors.primaryColor),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r30),
          borderSide: const BorderSide(color: AppColors.redColor),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(AppSizes.r30),
          borderSide: const BorderSide(color: AppColors.redColor),
        ),
        hintText: widget.hintText,
        hintStyle: const TextStyle(color: AppColors.greyTextColor),
      ),
    );
  }
}
