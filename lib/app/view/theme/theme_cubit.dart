import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:time_plan/app/view/theme/app_theme.dart';
import 'package:time_plan/app/view/theme/light_theme.dart';

class ThemeCubit extends Cubit<AppTheme>{
  ThemeCubit(): super (LightTheme());
  
  void changeTheme (AppTheme appTheme){
    emit(appTheme);
  }

}
