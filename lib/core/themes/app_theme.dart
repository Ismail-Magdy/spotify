import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTheme {
  // LIGHT THEME
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: .light,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,

    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      secondary: AppColors.blackColor,
      surface: AppColors.whiteColor,
      background: AppColors.lightBackgroundColor,
      onPrimary: AppColors.whiteColor,
      onSecondary: AppColors.whiteColor,
      onSurface: AppColors.blackTextColor,
      onBackground: AppColors.blackTextColor,
      error: Colors.redAccent,
    ),

    // 2. AppBar Color
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.transparentColor,
      foregroundColor: AppColors.blackTextColor, // لون الأيقونات والعناوين
    ),

    // 3. Navigation Bar Color
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightBackgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.bottomNavigationBarIconsColor,
    ),

    // 4. Button Colors (MaterialButton)
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor, // خلفية الزرار
      disabledColor: AppColors.greyColor, // لو الزرار مقفول
      textTheme: ButtonTextTheme.primary, // لون النص أبيض
    ),

    // 5. Text Selection (لون التظليل لما تحدد نص)
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
  );

  // ===========================================================================
  // 🌑 DARK THEME (Colors Only)
  // ===========================================================================
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor,

    // 1. Color Scheme
    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
      secondary: AppColors.whiteColor,
      surface:
          AppColors.darkBottomNavigationBarIconsColor, // لون الكروت في الدارك
      background: AppColors.darkBackgroundColor,
      onPrimary: AppColors.blackColor, // النص أسود فوق الأخضر عشان التباين
      onSecondary: AppColors.blackColor,
      onSurface: AppColors.whiteColor, // النص أبيض
      onBackground: AppColors.mainWhiteTextColor,
      error: Colors.redAccent,
    ),

    // 2. AppBar Color
    appBarTheme: const AppBarTheme(
      backgroundColor: AppColors.transparentColor,
      foregroundColor: AppColors.mainWhiteTextColor,
    ),

    // 3. Navigation Bar Color
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBackgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.lightGreyTextColor,
    ),

    // 4. Button Colors
    buttonTheme: const ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.darkBottomNavigationBarIconsColor,
      textTheme: ButtonTextTheme.primary,
    ),

    // 5. Text Selection
    textSelectionTheme: const TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor,
      selectionHandleColor: AppColors.primaryColor,
    ),
  );
}




/*
class AppTheme {
  //  LIGHT THEME
  static final ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    brightness: .light,
    fontFamily: "satoshi",
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.lightBackgroundColor,

    // Color Scheme
    colorScheme: const .light(
      primary: AppColors.primaryColor,
      surface: AppColors.whiteColor,
      onSurface: AppColors.blackTextColor,
      secondary: AppColors.blackColor,
      error: Colors.redAccent,
    ),

    //  Material Button Theme
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.greyColor,
      shape: RoundedRectangleBorder(borderRadius: .circular(AppSizes.r30)),
      height: AppSizes.h80,
      textTheme: .primary,
    ),

    //  App Bar Theme
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: AppColors.blackTextColor),
      actionsIconTheme: IconThemeData(color: AppColors.blackTextColor),
      titleTextStyle: TextStyle(
        color: AppColors.blackTextColor,
        fontSize: AppSizes.sp18,
        fontWeight: FontWeightHelper.bold,
        fontFamily: "satoshi",
      ),
    ),

    // Input Decoration
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      hintStyle: const TextStyle(
        color: AppColors.greyTextColor,
        fontWeight: FontWeightHelper.medium,
      ),
      contentPadding: .all(AppSizes.h20),

      enabledBorder: OutlineInputBorder(
        borderRadius: .circular(AppSizes.r30),
        borderSide: const BorderSide(color: AppColors.greyTextColor, width: 1),
      ),

      focusedBorder: OutlineInputBorder(
        borderRadius: .circular(AppSizes.r30),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),

      errorBorder: OutlineInputBorder(
        borderRadius: .circular(AppSizes.r30),
        borderSide: const BorderSide(color: Colors.red, width: 1),
      ),
    ),

    // Navigation Bar
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.lightBackgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor: AppColors.bottomNavigationBarIconsColor,
      elevation: 0,
      type: .fixed,
    ),

    // Slider Theme
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.blackColor,
      inactiveTrackColor: AppColors.blackColor.withValues(alpha: 0.3),
      thumbColor: AppColors.blackColor,
      trackHeight: 2.0,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
    ),

    // Text Theme
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.blackTextColor,
        fontWeight: FontWeightHelper.bold,
      ),
      titleLarge: TextStyle(
        color: AppColors.blackTextColor,
        fontWeight: FontWeightHelper.bold,
      ),
      bodyLarge: TextStyle(color: AppColors.blackTextColor),
      bodyMedium: TextStyle(color: AppColors.greyTextColor),
    ),
  );
  //



  // 🌑 DARK THEME
  static final ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    brightness: Brightness.dark,
    fontFamily: "satoshi",
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: AppColors.darkBackgroundColor, // 0D0C0C

    colorScheme: const ColorScheme.dark(
      primary: AppColors.primaryColor,
      surface: AppColors.darkBackgroundColor, // الخلفية الأساسية
      onSurface: AppColors.mainWhiteTextColor, // النص الأبيض FFFFFF
      secondary: AppColors.primaryColor,
    ),

    // Material Button Theme Dark
    buttonTheme: ButtonThemeData(
      buttonColor: AppColors.primaryColor,
      disabledColor: AppColors.darkBottomNavigationBarIconsColor,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
      height: 80,
      textTheme: ButtonTextTheme.primary,
    ),

    // App Bar Dark
    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0,
      centerTitle: true,
      scrolledUnderElevation: 0,
      iconTheme: IconThemeData(color: AppColors.mainWhiteTextColor),
      actionsIconTheme: IconThemeData(color: AppColors.mainWhiteTextColor),
      titleTextStyle: TextStyle(
        color: AppColors.mainWhiteTextColor,
        fontSize: 18,
        fontWeight: FontWeight.bold,
        fontFamily: "satoshi",
      ),
    ),

    // Input Decoration Dark
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      hintStyle: const TextStyle(color: AppColors.lightGreyTextColor), // BEBEBE
      contentPadding: const EdgeInsets.all(20),

      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(
          color: AppColors.lightGreyTextColor,
          width: 1,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: AppColors.primaryColor, width: 2),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
        borderSide: const BorderSide(color: Colors.redAccent, width: 1),
      ),
    ),

    // Navigation Bar Dark
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      backgroundColor: AppColors.darkBackgroundColor,
      selectedItemColor: AppColors.primaryColor,
      unselectedItemColor:
          AppColors.lightGreyTextColor, // BEBEBE عشان يبان على الخلفية السوداء
      elevation: 0,
      type: BottomNavigationBarType.fixed,
    ),

    // Slider Theme Dark (المشغل)
    sliderTheme: SliderThemeData(
      activeTrackColor: AppColors.primaryColor, // الأخضر في الدارك
      inactiveTrackColor: AppColors.lightGreyTextColor.withOpacity(0.3),
      thumbColor: AppColors.mainWhiteTextColor, // الدائرة بيضاء
      trackHeight: 2.0,
      thumbShape: const RoundSliderThumbShape(enabledThumbRadius: 6.0),
    ),

    // Text Theme Dark
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: AppColors.mainWhiteTextColor,
        fontWeight: FontWeight.bold,
      ),
      titleLarge: TextStyle(
        color: AppColors.mainWhiteTextColor,
        fontWeight: FontWeight.bold,
      ),
      bodyLarge: TextStyle(color: AppColors.mainWhiteTextColor),
      bodyMedium: TextStyle(
        color: AppColors.lightGreyTextColor,
      ), // النصوص الفرعية باهتة شوية
    ),
  );
}
*/