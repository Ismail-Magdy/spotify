import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/constants/spacing.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_app_bar_for_auth.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_divider.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  final TextEditingController emailController = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForAuth(isLogo: true),
      body: Center(
        child: Padding(
          padding: .symmetric(horizontal: AppSizes.w28),
          child: Column(
            children: [
              //
              verticalSpace(80),
              //
              CustomText(
                text: AppStrings.signIn,
                color: AppColors.blackTextColor,
                size: AppSizes.sp30,
                weight: FontWeightHelper.bold,
              ),
              //
              verticalSpace(22),
              // Two Texts
              Row(
                mainAxisAlignment: .center,
                children: [
                  CustomText(
                    text: AppStrings.ifYouNeedAnySupport,
                    color: AppColors.blackTextColor,
                    size: AppSizes.sp12,
                    weight: FontWeightHelper.regular,
                  ),
                  CustomText(
                    text: AppStrings.clickHere,
                    color: AppColors.primaryColor,
                    size: AppSizes.sp14,
                    weight: FontWeightHelper.regular,
                  ),
                ],
              ),
              //
              verticalSpace(38),
              //
              TextFormField(
                key: _key,
                autocorrect: false,
                controller: emailController,
                cursorColor: AppColors.primaryColor,
                cursorErrorColor: AppColors.redColor,
                cursorWidth: AppSizes.w2,
                keyboardType: TextInputType.emailAddress,
                maxLines: 1,
                obscureText: false,
                textAlignVertical: .center,
                style: TextStyle(color: AppColors.blackTextColor),
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
                  hintText: AppStrings.enterUsernameOrEmail,
                  hintStyle: TextStyle(),
                  suffixIcon: Icon(Icons.remove_red_eye_outlined),
                  border: OutlineInputBorder(
                    borderRadius: .circular(AppSizes.r30),
                    borderSide: BorderSide(color: AppColors.greyColor),
                  ),
                ),
              ),
              //
              Align(
                alignment: .centerLeft,
                child: CustomText(
                  text: AppStrings.recoveryPassword,
                  color: AppColors.blackTextColor,
                  size: 14,
                  weight: FontWeightHelper.medium,
                ),
              ),
              //
              verticalSpace(22),
              //
              //
              CustomButton(text: AppStrings.signIn, onPressed: () {}),
              //
              verticalSpace(31),
              //
              CustomDivider(),
              //
            ],
          ),
        ),
      ),
    );
  }
}
