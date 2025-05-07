import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:time_plan/app/view/theme/app_theme.dart';
import 'package:time_plan/app/view/theme/light_theme.dart';
import 'package:time_plan/app/view/theme/light_theme_blue.dart';
import 'package:time_plan/app/view/theme/light_theme_brown.dart';


extension ThemeExtention on BuildContext{
  AppColors get colors => read<ThemeCubit>().state.colors;
  TextTheme get textTheme => Theme.of(this).textTheme;

  void  changeTheme (AppTheme appTheme){
    read<ThemeCubit>().changeTheme(appTheme);
  }
}

class ThemeCubit extends Cubit<AppTheme>{
  ThemeCubit(): super (LightTheme()){
    _loadTheme();
  }
  
  Future<void> changeTheme (AppTheme appTheme) async{
    final preference = await SharedPreferences.getInstance();
    preference.setString('theme',appTheme.runtimeType.toString());

    emit(appTheme);
  }
  
  Future<void> _loadTheme() async{
    final preference = await SharedPreferences.getInstance();
    final theme = preference.getString('theme');

    switch(theme){
      case 'LightTheme': emit(LightTheme());
      case 'LightBlueTheme': emit(LightBlueTheme());
      case 'LightBrownTheme': emit(LightBrownTheme());
      default: emit(LightTheme());
    }
  }
}
