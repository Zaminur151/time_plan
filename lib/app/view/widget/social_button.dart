import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:time_plan/app/view/style/textStyle.dart';
import 'package:time_plan/app/view/theme/theme_cubit.dart';

class SocialButton extends StatelessWidget {
  const SocialButton({
    required this.label,
    required this.iconPath,
    required this.onTap,
    this.isOnlyIcon = false,
    super.key});
  
  factory SocialButton.google({
    required VoidCallback onTap,
    isOnlyIcon = false,
  }) {
    return SocialButton(label: "Login with google", iconPath: "assets/svg/ic_google.svg", onTap: onTap, isOnlyIcon: isOnlyIcon,);
  }

  factory SocialButton.apple({
    required VoidCallback onTap,
    isOnlyIcon = false,
  }) {
    return SocialButton(label: "Login with apple", iconPath: "assets/svg/ic_apple.svg", onTap: onTap, isOnlyIcon: isOnlyIcon);
  }

  factory SocialButton.mail({
    required VoidCallback onTap,
    isOnlyIcon = false,
  }) {
    return SocialButton(label: "Login with mail", iconPath: "assets/svg/ic_mail.svg", onTap: onTap, isOnlyIcon: isOnlyIcon);
  }

  final String label;
  final String iconPath;
  final VoidCallback onTap; 
  final bool isOnlyIcon; 

  

  @override
  Widget build(BuildContext context) {
    if(isOnlyIcon){
      return IconButton(onPressed: onTap, icon: SvgPicture.asset(iconPath,height: 24, width: 24,),
      style: FilledButton.styleFrom(
        backgroundColor: context.colors.surface100,
        //backgroundColor: LightTheme().colors.surface100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16)
        )
      ),
      );
    }
    return OutlinedButton.icon(
      onPressed: onTap, 
      label: Text(label,style: TextStyles.titleLarge.copyWith(
        color: context.colors.secondary2nd
        //color: LightTheme().colors.secondary2nd

      ),),
      icon: SvgPicture.asset(iconPath,height: 24,width: 24,),
      style: FilledButton.styleFrom(
        side: BorderSide(color: context.colors.surface200)
        //side: BorderSide(color: LightTheme().colors.surface200)
      ),
      );
  }
}