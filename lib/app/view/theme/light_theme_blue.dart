import 'package:flutter/material.dart';
import 'package:time_plan/app/view/style/custom_outline_input_border.dart';
import 'package:time_plan/app/view/style/text_style.dart';
import 'package:time_plan/app/view/theme/app_theme.dart';

class LightBlueTheme extends AppTheme {

  @override
  AppColors get colors => LightBlueColors();

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
    appBarTheme: AppBarTheme(
      backgroundColor: colors.background,
      foregroundColor: colors.surface900,
      titleTextStyle: TextStyles.labelMedium,
    ),
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
  AppBarTheme get appBarTheme => throw UnimplementedError();
  
  @override
  BottomNavigationBarThemeData get bottomNavigationBarThemeData => throw UnimplementedError();
}

class LightBlueColors extends AppColors {

  @override
  Color get primary => const Color(0xFF3B82F6); // blue-500

  @override
  Color get primary2nd => const Color(0xFF60A5FA); // blue-400

  @override
  Color get primary3rd => const Color(0xFF93C5FD); // blue-300

  @override
  Color get primary4th => const Color(0xFFBFDBFE); // blue-200

  @override
  Color get primary5th => const Color(0xFFDBEAFE); // blue-100

  @override
  Color get primary6th => const Color(0xFFEFF6FF); // blue-50

  @override
  Color get secondary => const Color(0xFF0F172A); // dark navy

  @override
  Color get secondary2nd => const Color(0xFF1E293B);

  @override
  Color get secondary3rd => const Color(0xFF3B3F58);

  @override
  Color get secondary4th => const Color(0xFF64748B);

  @override
  Color get secondary5th => const Color(0xFFAFC5E4);

  @override
  Color get secondary6th => const Color(0xFFF1F5F9);

  @override
  Color get success => const Color(0xFF22C55E);

  @override
  Color get warning => const Color(0xFFFFB020);

  @override
  Color get error => const Color(0xFFEF4444);

  @override
  Color get surface50 => const Color(0xFFF8FAFC);

  @override
  Color get surface100 => const Color(0xFFF1F5F9);

  @override
  Color get surface200 => const Color(0xFFE2E8F0);

  @override
  Color get surface300 => const Color(0xFFCBD5E1);

  @override
  Color get surface400 => const Color(0xFF94A3B8);

  @override
  Color get surface500 => const Color(0xFF64748B);

  @override
  Color get surface600 => const Color(0xFF475569);

  @override
  Color get surface700 => const Color(0xFF334155);

  @override
  Color get surface800 => const Color(0xFF1E293B);

  @override
  Color get surface900 => const Color(0xFF0F172A);

  @override
  Color get background => const Color(0xFFFFFFFF);

  @override
  Color get buttonTextColor => const Color(0xFFFFFFFF);
}
