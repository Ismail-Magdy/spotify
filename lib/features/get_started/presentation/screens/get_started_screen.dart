import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_images.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/app_texts.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_text.dart';
import 'package:spotify/features/choose_mode/presentation/screens/choose_mode_screen.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Back Ground Image
          Image.asset(AppImages.splashImage),
          // Image Shadow
          Container(decoration: BoxDecoration(color: AppColors.blackWith50)),
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
                    text: AppTexts.enjoyListeningToMusic,
                    color: AppColors.mainWhiteTextColor,
                    size: AppSizes.sp25,
                    weight: .bold,
                  ),
                  //
                  verticalSpace(21),
                  //
                  CustomText(
                    maxLines: 4,
                    text: AppTexts.immerseYourself,
                    color: AppColors.greyTextColor,
                    size: AppSizes.sp17,
                    weight: .normal,
                  ),
                  //
                  verticalSpace(37),
                  // Buttom
                  CustomButton(
                    text: AppTexts.getStarted,
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => const ChooseModeScreen(),
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
