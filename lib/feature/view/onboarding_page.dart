import 'package:flutter/material.dart';
import 'package:time_plan/app/view/theme/theme_cubit.dart';
import 'package:time_plan/app/view/widget/social_button.dart';

class OnboardingPage extends StatelessWidget {
  const OnboardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Backgroung(
        child: Column(
          children: [
            Expanded(child: Text("dfhj")),
            _SocialButtons()
          ]
        ),
      ),
    );
  }
}

class _Backgroung extends StatelessWidget {
  const _Backgroung({required this.child,super.key});
  
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: double.infinity,
      child: DecoratedBox(decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          context.colors.surface100,
          context.colors.primary6th
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,)
      ),
      child: child,
      ),
    );
  }
}

class _SocialButtons extends StatelessWidget {
  const _SocialButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // return SizedBox(
    //   width: double.infinity,
    //   child: DecoratedBox(
    //     //width: double.infinity,
    //     decoration: BoxDecoration(
    //       borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
    //     ),
    //     child: Column(
    //       children: [
    //         SocialButton.google(onTap: (){}),
    //         SocialButton.apple(onTap: (){}),
    //         SocialButton.mail(onTap: (){}),
    //       ],
    //     ),
    //   ),
    // );
    return Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: context.colors.background,
        borderRadius: BorderRadius.only(topLeft: Radius.circular(16), topRight: Radius.circular(16))
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          spacing: 10,
          children: [
            SizedBox(width: 40, child: Divider(thickness: 5, height: 20,)),
            SizedBox(width: double.infinity, child: SocialButton.google(onTap: (){})),
            SizedBox(width: double.infinity, child: SocialButton.apple(onTap: (){})),
            SizedBox(width: double.infinity, child: SocialButton.mail(onTap: (){})),
            SizedBox(height: 5,)
            
          ],
        ),
      ),
    );
  }
}
