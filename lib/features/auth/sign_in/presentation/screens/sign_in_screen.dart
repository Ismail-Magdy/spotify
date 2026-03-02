import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/helpers/app_icons.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/constants/spacing.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_app_bar_for_auth.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_divider.dart';
import 'package:spotify/core/widgets/custom_text.dart';
import 'package:spotify/core/widgets/custom_text_field.dart';
import 'package:spotify/features/auth/register/presentation/screens/register_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
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
                verticalSpace(70),
                //
                CustomText(
                  text: AppStrings.signIn,
                  color: AppColors.blackTextColor,
                  size: AppSizes.sp30,
                  weight: FontWeightHelper.bold,
                ),
                //
                verticalSpace(20),
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
                verticalSpace(35),
                //
                CustomTextField(
                  controller: _emailController,
                  isPassword: false,
                  hintText: AppStrings.enterUsernameOrEmail,
                  keyboardType: .emailAddress,
                ),
                //
                verticalSpace(16),
                //
                CustomTextField(
                  controller: _passwordController,
                  hintText: AppStrings.password,
                  isPassword: true,
                  keyboardType: .text,
                ),
                //
                verticalSpace(18),
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
                verticalSpace(20),
                //
                CustomButton(text: AppStrings.signIn, onPressed: () {}),
                //
                verticalSpace(31),
                //
                CustomDivider(),
                //
                verticalSpace(35),
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
                      text: AppStrings.notAMember,
                      color: AppColors.blackTextColor,
                      size: AppSizes.sp12,
                      weight: FontWeightHelper.medium,
                    ),
                    GestureDetector(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      ),
                      child: CustomText(
                        text: AppStrings.registerNow,
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
