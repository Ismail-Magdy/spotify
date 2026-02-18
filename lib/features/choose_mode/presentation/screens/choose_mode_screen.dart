import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/core/helpers/app_icons.dart';
import 'package:spotify/core/helpers/app_images.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_texts.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_text.dart';
import 'package:spotify/features/choose_mode/presentation/bloc/theme_cubit.dart';
import 'package:spotify/features/choose_mode/presentation/widgets/custom_container_logo.dart';
import 'package:spotify/features/login_or_signup/presentation/screens/login_or_signup_screen.dart';

class ChooseModeScreen extends StatelessWidget {
  const ChooseModeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Back Ground Image
          Image.asset(AppImages.chooseModeImage),
          //
          Center(
            child: Padding(
              padding: .symmetric(horizontal: AppSizes.w30),
              child: Column(
                children: [
                  //
                  verticalSpace(37),
                  // Icon
                  Image.asset(
                    AppImages.logoIcon,
                    width: AppSizes.w196,
                    height: AppSizes.h59,
                  ),
                  //
                  Spacer(),
                  // Text
                  CustomText(
                    text: AppTexts.chooseMode,
                    color: AppColors.mainWhiteTextColor,
                    size: AppSizes.sp25,
                    weight: .bold,
                  ),
                  //
                  verticalSpace(31),
                  // Modes
                  Row(
                    mainAxisAlignment: .spaceAround,
                    children: [
                      CustomContainerLogo(
                        icon: AppIcons.darkMode,
                        title: AppTexts.darkMode,
                        onTap: () {
                          context.read<ThemeCubit>().updateTheme(.dark);
                        },
                      ),
                      CustomContainerLogo(
                        icon: AppIcons.lightMode,
                        title: AppTexts.lightMode,
                        onTap: () {
                          context.read<ThemeCubit>().updateTheme(.light);
                        },
                      ),
                    ],
                  ),
                  //
                  verticalSpace(70),
                  // Buttom
                  CustomButton(
                    text: AppTexts.continueText,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => LoginOrSignupScreen(),
                        ),
                      );
                    },
                  ),
                  //
                  verticalSpace(69),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
