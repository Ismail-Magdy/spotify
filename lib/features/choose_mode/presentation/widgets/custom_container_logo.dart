import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/helpers/spacing.dart';
import 'package:spotify/core/themes/app_colors.dart';
import 'package:spotify/core/widgets/custom_text.dart';

class CustomContainerLogo extends StatelessWidget {
  const CustomContainerLogo({
    super.key,
    required this.icon,
    required this.title,
    required this.onTap,
  });
  final String icon;
  final String title;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTap,
          child: Container(
            padding: .all(AppSizes.h20),
            height: AppSizes.h71,
            width: AppSizes.w71,
            decoration: BoxDecoration(
              color: AppColors.iconBackgroundColor,
              shape: .circle,
            ),
            child: SvgPicture.asset(icon),
          ),
        ),
        verticalSpace(17),
        CustomText(
          text: title,
          color: AppColors.mainWhiteTextColor,
          size: AppSizes.sp17,
          weight: .w500,
        ),
      ],
    );
  }
}
