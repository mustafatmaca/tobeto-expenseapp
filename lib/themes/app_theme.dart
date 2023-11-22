import 'package:expense_app/themes/app_color.dart';
import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColor.colorScheme,
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.mainWhite,
      iconTheme: IconThemeData(
        color: AppColor.mainBlack,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 35,
          color: AppColor.primaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 30,
          color: AppColor.primaryColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 25,
          color: AppColor.primaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleSmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColor.mainBlack,
        ),
        bodyLarge: TextStyle(
          fontSize: 15,
          color: AppColor.mainBlack,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          color: AppColor.mainBlack,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          color: AppColor.mainBlack,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.mainWhite,
        foregroundColor: AppColor.primaryColor,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(
            color: AppColor.primaryColor,
            width: 1,
          ),
        ),
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryColor,
        padding: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      cardTheme: CardTheme(
        color: AppColor.primaryColor,
        margin: const EdgeInsets.all(12),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColor.mainBlack,
        actionTextColor: AppColor.primaryColor,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: AppColor.primaryColor,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
            foregroundColor: MaterialStatePropertyAll(AppColor.secondaryColor),
            iconColor: MaterialStatePropertyAll(AppColor.mainBlack)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }

  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      colorScheme: AppColor.colorScheme,
      primaryColor: AppColor.primaryColor,
      scaffoldBackgroundColor: AppColor.mainBlack,
      iconTheme: IconThemeData(
        color: AppColor.mainBlack,
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          fontSize: 35,
          color: AppColor.primaryColor,
        ),
        headlineMedium: TextStyle(
          fontSize: 30,
          color: AppColor.primaryColor,
        ),
        headlineSmall: TextStyle(
          fontSize: 25,
          color: AppColor.primaryColor,
        ),
        titleLarge: TextStyle(
          fontSize: 25,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleMedium: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        titleSmall: TextStyle(
          fontSize: 15,
          fontWeight: FontWeight.bold,
          color: AppColor.primaryColor,
        ),
        bodyLarge: TextStyle(
          fontSize: 15,
          color: AppColor.mainBlack,
        ),
        bodyMedium: TextStyle(
          fontSize: 12,
          color: AppColor.mainBlack,
        ),
        bodySmall: TextStyle(
          fontSize: 10,
          color: AppColor.mainBlack,
        ),
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: AppColor.mainBlack,
        foregroundColor: AppColor.primaryColor,
        elevation: 0,
        shape: Border(
          bottom: BorderSide(
            color: AppColor.primaryColor,
            width: 1,
          ),
        ),
      ),
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColor.mainBlack,
      ),
      buttonTheme: ButtonThemeData(
        buttonColor: AppColor.primaryColor,
        padding: const EdgeInsets.all(24),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
      cardTheme: CardTheme(
        color: AppColor.primaryColor,
        margin: const EdgeInsets.all(12),
      ),
      snackBarTheme: SnackBarThemeData(
        backgroundColor: AppColor.mainBlack,
        actionTextColor: AppColor.primaryColor,
      ),
      datePickerTheme: DatePickerThemeData(
        backgroundColor: AppColor.primaryColor,
      ),
      iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
            backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
            foregroundColor: MaterialStatePropertyAll(AppColor.secondaryColor),
            iconColor: MaterialStatePropertyAll(AppColor.mainBlack)),
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(AppColor.primaryColor),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
        ),
      ),
    );
  }
}
