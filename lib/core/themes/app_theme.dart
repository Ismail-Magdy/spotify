import 'package:flutter/material.dart';
import 'package:spotify/core/helpers/app_sizes.dart';
import 'package:spotify/core/themes/font_weight_helpers.dart';
import 'app_colors.dart';

class AppTheme {
  // LIGHT
  static final lightTheme = ThemeData(
    useMaterial3: true,
    brightness: .light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,

    colorScheme: const .light(
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.blackColor),
      titleTextStyle: TextStyle(
        color: AppColors.blackColor,
        fontSize: AppSizes.sp18,
        fontWeight: FontWeightHelper.semiBold,
      ),
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.greyTextColor,
        fontSize: AppSizes.sp14,
      ),
      titleLarge: TextStyle(
        color: AppColors.blackColor,
        fontSize: AppSizes.sp22,
        fontWeight: FontWeightHelper.bold,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
        shape: RoundedRectangleBorder(borderRadius: .circular(AppSizes.r30)),
        padding: .symmetric(vertical: AppSizes.h16),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.whiteColor,
      hintStyle: const TextStyle(color: AppColors.lightGreyTextColor),
      border: OutlineInputBorder(
        borderRadius: .circular(AppSizes.sp12),
        borderSide: .none,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.transparentColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.bottomNavigationBarIconsColor,
      elevation: 0,
      type: .fixed,
    ),
  );

  // DARK
  static final darkTheme = ThemeData(
    useMaterial3: true,
    brightness: .dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,

    colorScheme: const .dark(
      primary: AppColors.primaryColor,
      secondary: AppColors.primaryColor,
    ),

    appBarTheme: AppBarTheme(
      backgroundColor: AppColors.transparentColor,
      elevation: 0,
      centerTitle: true,
      iconTheme: IconThemeData(color: AppColors.whiteColor),
      titleTextStyle: TextStyle(
        color: AppColors.whiteColor,
        fontSize: AppSizes.sp18,
        fontWeight: FontWeightHelper.semiBold,
      ),
    ),

    textTheme: TextTheme(
      bodyMedium: TextStyle(
        color: AppColors.lightGreyTextColor,
        fontSize: AppSizes.sp14,
      ),
      titleLarge: TextStyle(
        color: AppColors.whiteColor,
        fontSize: AppSizes.sp22,
        fontWeight: FontWeightHelper.bold,
      ),
    ),

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.blackColor,
        shape: RoundedRectangleBorder(borderRadius: .circular(AppSizes.sp30)),
        padding: .symmetric(vertical: AppSizes.sp16),
      ),
    ),

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: AppColors.darkBottomNavigationBarIconsColor,
      hintStyle: const TextStyle(color: AppColors.lightGreyTextColor),
      border: OutlineInputBorder(
        borderRadius: .circular(AppSizes.sp12),
        borderSide: .none,
      ),
    ),

    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.transparentColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.darkBottomNavigationBarIconsColor,
      elevation: 0,
      type: .fixed,
    ),
  );
}
