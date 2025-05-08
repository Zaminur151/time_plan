import 'package:flutter/material.dart';
import 'package:time_plan/app/view/style/custom_outline_input_border.dart';
import 'package:time_plan/app/view/style/text_style.dart';
import 'package:time_plan/app/view/theme/app_theme.dart';

class LightTheme extends AppTheme{

  @override
  AppColors get colors => LightColors();

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
      // side: BorderSide(
      //   color: colors.primary
      // ),
      padding: const EdgeInsets.all(16),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16)
      ),
      textStyle: TextStyles.titleLarge,
      // it's mainly use to implement disable border side color
    ).copyWith(side: WidgetStateBorderSide.resolveWith(
    (state){
      if(state.contains(WidgetState.disabled)){
        return BorderSide(color: colors.surface100);
      }
      return BorderSide(color: colors.primary);
    }
    ))
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
    bottomNavigationBarTheme: bottomNavigationBarThemeData,  
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
      borderSide: BorderSide(
        color: colors.primary
      ),
      borderRadius: BorderRadius.circular(16)
    ),
    enabledBorder: CustomOutlinedInputBorder(
            borderSide: BorderSide(
        color: Colors.transparent
      ),
      borderRadius: BorderRadius.circular(16)
    )
  );
  
  @override
  AppBarTheme get appBarTheme => AppBarTheme(
      backgroundColor: colors.background,
      foregroundColor: colors.surface900,
      titleTextStyle: TextStyles.labelMedium,
      centerTitle: true,
    );
  
  @override
  BottomNavigationBarThemeData get bottomNavigationBarThemeData => BottomNavigationBarThemeData(
    backgroundColor: colors.background,
    selectedItemColor: colors.primary,
    unselectedItemColor: colors.surface500,
    selectedLabelStyle: TextStyles.bodySmall,
    unselectedLabelStyle: TextStyles.bodySmall,
  );

}



class LightColors extends AppColors{

  @override
  Color get primary => const Color(0xFF12BF52);

  @override
  Color get primary2nd => const Color(0xFF22C55E);

  @override
  Color get primary3rd => const Color(0xFF4ADE80);

  @override
  Color get primary4th => const Color(0xFF86EFAC);

  @override
  Color get primary5th => const Color(0xFFBBF7D0);

  @override
  Color get primary6th => const Color(0xFFDCFCE7);

  @override
  Color get secondary => const Color(0xFF03114B);

  @override
  Color get secondary2nd => const Color(0xFF03314B);

  @override
  Color get secondary3rd => const Color(0xFF22668F);

  @override
  Color get secondary4th => const Color(0xFF5CABD3);

  @override
  Color get secondary5th => const Color(0xFFBDE7FF);

  @override
  Color get secondary6th => const Color(0xFFFFF5FB);

  @override
  Color get success => const Color(0xFF22C55E);

  @override
  Color get warning => const Color(0xFFFFACC15);

  @override
  Color get error => const Color(0xFFFF5555);
 
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
  Color get surface900 => const Color(0xFF121826);

  @override
  Color get background => const Color(0xFFFFFFFF);
  
  @override
  Color get buttonTextColor => const Color(0xFFFFFFFF);

}