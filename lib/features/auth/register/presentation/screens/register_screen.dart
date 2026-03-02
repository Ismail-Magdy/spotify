import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/constants/spacing.dart';
import 'package:spotify/core/helpers/app_icons.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_app_bar_for_auth.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_divider.dart';
import 'package:spotify/core/widgets/custom_text.dart';
import 'package:spotify/core/widgets/custom_text_field.dart';
import 'package:spotify/features/auth/sign_in/presentation/screens/sign_in_screen.dart';

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({super.key});

  @override
  State<RegisterScreen> createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController _fullNameController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  //
  bool isAppear = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBarForAuth(),
      body: Center(
        child: SingleChildScrollView(
          child: Padding(
            padding: .symmetric(horizontal: AppSizes.w28),
            child: Column(
              children: [
                //
                verticalSpace(20),
                //
                CustomText(
                  text: AppStrings.register,
                  color: AppColors.blackTextColor,
                  size: AppSizes.sp30,
                  weight: FontWeightHelper.bold,
                ),
                //
                verticalSpace(15),
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
                verticalSpace(25),
                //
                CustomTextField(
                  controller: _fullNameController,
                  isPassword: false,
                  hintText: AppStrings.fullName,
                  keyboardType: .name,
                ),
                //
                verticalSpace(15),
                //
                CustomTextField(
                  controller: _emailController,
                  isPassword: false,
                  hintText: AppStrings.enterEmail,
                  keyboardType: .emailAddress,
                ),
                //
                verticalSpace(15),
                //
                CustomTextField(
                  controller: _passwordController,
                  hintText: AppStrings.password,
                  isPassword: true,
                  keyboardType: .text,
                ),
                //
                verticalSpace(30),
                //
                CustomButton(text: AppStrings.createAccount, onPressed: () {}),
                //
                verticalSpace(30),
                //
                CustomDivider(),
                //
                verticalSpace(32),
                // Two Icons
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    SvgPicture.asset(AppIcons.googleIcon),
                    horizontalSpace(58),
                    SvgPicture.asset(AppIcons.appleIcon),
                  ],
                ),
                //
                verticalSpace(55),
                //
                // Two Texts
                Row(
                  mainAxisAlignment: .center,
                  children: [
                    CustomText(
                      text: AppStrings.doYouHaveAnAccount,
                      color: AppColors.blackTextColor,
                      size: AppSizes.sp12,
                      weight: FontWeightHelper.medium,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()),
                      ),
                      child: CustomText(
                        text: AppStrings.signIn,
                        color: AppColors.blueColor,
                        size: AppSizes.sp14,
                        weight: FontWeightHelper.medium,
                      ),
                    ),
                  ],
                ),
                //
              ],
            ),
          ),
        ),
      ),
    );
  }
}
