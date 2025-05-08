import 'package:flutter/material.dart';
import 'package:time_plan/app/view/style/custom_outline_input_border.dart';
import 'package:time_plan/app/view/style/text_style.dart';
import 'package:time_plan/app/view/theme/app_theme.dart';

class LightBrownTheme extends AppTheme {

  @override
  AppColors get colors => LightChocolateColors();

  @override
  FilledButtonThemeData get filledButtonThemeData => FilledButtonThemeData(
    style: FilledButton.styleFrom(
      backgroundColor: colors.primary,
      foregroundColor: colors.buttonTextColor,
      disabledBackgroundColor: colors.surface100,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      textStyle: TextStyles.titleLarge
    )
  );

  @override
  OutlinedButtonThemeData get outlineButtonThemeData => OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
      foregroundColor: colors.primary,
      backgroundColor: colors.background,
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      textStyle: TextStyles.titleLarge,
    ).copyWith(side: WidgetStateBorderSide.resolveWith((state) {
      if (state.contains(WidgetState.disabled)) {
        return BorderSide(color: colors.surface100);
      }
      return BorderSide(color: colors.primary);
    }))
  );

  @override
  TextTheme get textTheme => TextTheme(
    headlineLarge: TextStyles.headlineLarge,
    headlineMedium: TextStyles.headlineMedium,
    headlineSmall: TextStyles.headlineSmall,
    displayLarge: TextStyles.displayLarge,
    displayMedium: TextStyles.displayMedium,
    displaySmall: TextStyles.displaySmall,
    labelLarge: TextStyles.labelLarge,
    labelMedium: TextStyles.labelMedium,
    labelSmall: TextStyles.labelSmall,
    titleLarge: TextStyles.titleLarge,
    titleMedium: TextStyles.titleMedium,
    titleSmall: TextStyles.titleSmall,
    bodyLarge: TextStyles.bodyLarge,
    bodyMedium: TextStyles.bodyMedium,
    bodySmall: TextStyles.bodySmall,
  );

  @override
  ThemeData get theme => ThemeData(
    useMaterial3: true,
    appBarTheme: appBarTheme,
    filledButtonTheme: filledButtonThemeData,
    outlinedButtonTheme: outlineButtonThemeData,
    inputDecorationTheme: inputDecorationTheme,
  );

  @override
  InputDecorationTheme get inputDecorationTheme => InputDecorationTheme(
    filled: true,
    fillColor: colors.surface50,
    suffixIconColor: colors.surface500,
    labelStyle: TextStyles.bodyMedium.copyWith(
      color: colors.surface400,
      fontWeight: FontWeight.w400
    ),
    focusedBorder: CustomOutlinedInputBorder(
      borderSide: BorderSide(color: colors.primary),
      borderRadius: BorderRadius.circular(16)
    ),
    enabledBorder: CustomOutlinedInputBorder(
      borderSide: BorderSide(color: Colors.transparent),
      borderRadius: BorderRadius.circular(16)
    ),
  );
  
  @override
  AppBarTheme get appBarTheme => AppBarTheme(
      backgroundColor: colors.background,
      foregroundColor: colors.surface900,
      titleTextStyle: TextStyles.labelMedium,
    );
  
  @override
  BottomNavigationBarThemeData get bottomNavigationBarThemeData => throw UnimplementedError();
}

class LightChocolateColors extends AppColors {

  @override
  Color get primary => const Color(0xFF7B3F00); // dark chocolate

  @override
  Color get primary2nd => const Color(0xFF8B5E3C); // medium brown

  @override
  Color get primary3rd => const Color(0xFFA47148); // light brown

  @override
  Color get primary4th => const Color(0xFFBF8F68); // caramel tone

  @override
  Color get primary5th => const Color(0xFFD6B28D); // creamy brown

  @override
  Color get primary6th => const Color(0xFFF1E5D3); // latte beige

  @override
  Color get secondary => const Color(0xFF2C1B0F); // dark roasted

  @override
  Color get secondary2nd => const Color(0xFF3B2F2F); // muted brown

  @override
  Color get secondary3rd => const Color(0xFF5C4033); // cocoa

  @override
  Color get secondary4th => const Color(0xFF8B6D5C); // almond brown

  @override
  Color get secondary5th => const Color(0xFFEAD9CC); // warm neutral

  @override
  Color get secondary6th => const Color(0xFFFFF8F2); // soft background

  @override
  Color get success => const Color(0xFF4CAF50); // keeping default green

  @override
  Color get warning => const Color(0xFFFFB020); // amber

  @override
  Color get error => const Color(0xFFEF4444); // red

  @override
  Color get surface50 => const Color(0xFFF8F5F2); // warm beige

  @override
  Color get surface100 => const Color(0xFFEFE6DD); // paper brown

  @override
  Color get surface200 => const Color(0xFFD6C2B2);

  @override
  Color get surface300 => const Color(0xFFBDA290);

  @override
  Color get surface400 => const Color(0xFF9C8576);

  @override
  Color get surface500 => const Color(0xFF7A685D);

  @override
  Color get surface600 => const Color(0xFF5C4E45);

  @override
  Color get surface700 => const Color(0xFF3D342F);

  @override
  Color get surface800 => const Color(0xFF2A221F);

  @override
  Color get surface900 => const Color(0xFF1C1612);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get buttonTextColor => const Color(0xFFFFFFFF);
}
