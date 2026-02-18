import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/helpers/app_icons.dart';
import 'package:spotify/core/helpers/app_images.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/themes/app_colors.dart';

class CustomAppBarForAuth extends StatelessWidget
    implements PreferredSizeWidget {
  const CustomAppBarForAuth({super.key});
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Padding(
        padding: .only(left: 20),
        child: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: CircleAvatar(
            radius: 24,
            backgroundColor: AppColors.arrowBackCircleColor,
            child: SvgPicture.asset(AppIcons.arrowBack),
          ),
        ),
      ),

      title: Image.asset(
        AppImages.logoIcon,
        height: AppSizes.h33,
        width: AppSizes.w108,
      ),
      centerTitle: true,
    );
  }
}
