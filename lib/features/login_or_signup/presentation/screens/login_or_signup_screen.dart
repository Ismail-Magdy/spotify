import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/helpers/app_icons.dart';
import 'package:spotify/core/helpers/app_images.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_strings.dart';
import 'package:spotify/core/constants/spacing.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'package:spotify/core/widgets/custom_text.dart';
import 'package:spotify/features/auth/register/presentation/screens/register_screen.dart';
import 'package:spotify/features/auth/sign_in/presentation/screens/sign_in_screen.dart';
import 'package:spotify/features/login_or_signup/presentation/widgets/custom_small_button.dart';

class LoginOrSignupScreen extends StatelessWidget {
  const LoginOrSignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          //
          Align(
            alignment: .topRight,
            child: SvgPicture.asset(AppIcons.topLines),
          ),
          //
          Align(
            alignment: .bottomLeft,
            child: Image.asset(AppImages.loginBillie),
          ),
          //
          Align(
            alignment: .bottomRight,
            child: SvgPicture.asset(AppIcons.bottomLines),
          ),
          //
          Padding(
            padding: .symmetric(
              horizontal: AppSizes.w20,
              vertical: AppSizes.h40,
            ),
            child: Column(
              crossAxisAlignment: .center,
              children: [
                //
                GestureDetector(
                  onTap: () => Navigator.pop(context),
                  child: Align(
                    alignment: .centerLeft,
                    child: CircleAvatar(
                      radius: AppSizes.r18,
                      backgroundColor: AppColors.arrowBackCircleColor,
                      child: SvgPicture.asset(AppIcons.arrowBack),
                    ),
                  ),
                ),
                verticalSpace(111),
                // Logo
                Image.asset(
                  AppImages.logoIcon,
                  height: AppSizes.h71,
                  width: AppSizes.w235,
                ),
                //
                verticalSpace(55),
                //
                CustomText(
                  text: AppStrings.enjoyListeningToMusic,
                  color: AppColors.blackTextColor,
                  size: 26,
                  weight: FontWeightHelper.bold,
                ),
                //
                verticalSpace(21),
                //
                CustomText(
                  maxLines: 2,
                  text: AppStrings.spotifyIsProprietary,
                  color: AppColors.blackTextColor,
                  size: 17,
                  weight: FontWeightHelper.regular,
                ),
                //
                verticalSpace(30),
                // Buttons
                Row(
                  mainAxisAlignment: .spaceAround,
                  children: [
                    //
                    CustomSmallButton(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const RegisterScreen(),
                        ),
                      ),
                      text: AppStrings.register,
                      textColor: AppColors.mainWhiteTextColor,
                      buttonColor: AppColors.primaryColor,
                      isBorder: false,
                    ),
                    //
                    CustomSmallButton(
                      onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(builder: (_) => const SignInScreen()),
                      ),
                      text: AppStrings.signIn,
                      textColor: AppColors.blackTextColor,
                      buttonColor: AppColors.transparentColor,
                      isBorder: true,
                    ),
                    //
                  ],
                ),
                //
              ],
            ),
          ),
        ],
      ),
    );
  }
}
