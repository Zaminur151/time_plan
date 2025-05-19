import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:time_plan/app/view/theme/theme_cubit.dart';
import 'package:time_plan/app/view/widget/social_button.dart';

class OnboardingPage extends StatefulWidget {
  const OnboardingPage({super.key});

  @override
  State<OnboardingPage> createState() => _OnboardingPageState();
}

class _OnboardingPageState extends State<OnboardingPage> {
  var _activeIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _Backgroung(
        child: Column(
          children: [
             Expanded(child: __CarouselWidget(onPageChanged: (int value) { setState((){
              _activeIndex = value;
             }); },)),
             AnimatedSmoothIndicator(    
                activeIndex: _activeIndex,    
                count: _carouselItems.length,    
                effect: WormEffect(), 
              ),
              SizedBox(height: 20,),
            _SocialButtons(onGoogleLogin: () {  }, onAppleLogin: () {  }, onMailLogin: () {  },)
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
  const _SocialButtons({required this.onGoogleLogin, required this.onAppleLogin, required this.onMailLogin});

  final VoidCallback onGoogleLogin;
  final VoidCallback onAppleLogin;
  final VoidCallback onMailLogin;

  @override
  Widget build(BuildContext context) {
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

class CarouselItem {
  const CarouselItem({required this.imagePath,  required this.title, required this.subTitle,});

  final String imagePath;
  final String title;
  final String subTitle;
}

final _carouselItems = <CarouselItem>[
  const CarouselItem(imagePath: "assets/svg/onboarding/carousel3.svg", title: "Get More with Premium\nStart Your Journy", subTitle: "You're an owner of a company or employe you can check your office work time report"),
   const CarouselItem(imagePath: "assets/svg/onboarding/carousel2.svg", title: "Check Your Work Attendance\nReport on the Go", subTitle: "You're an owner of a company or employe you can check your office work time report"),
  const CarouselItem(imagePath: "assets/svg/onboarding/carousel1.svg", title: "Get More with Premium\nStart Your Journy", subTitle: "You're an owner of a company or employe you can check your office work time report"),
];


class __CarouselWidget extends StatefulWidget {
  const __CarouselWidget({required this.onPageChanged, super.key});

  final ValueChanged<int> onPageChanged;

  @override
  State<__CarouselWidget> createState() => ___CarouselWidgetState();
}

class ___CarouselWidgetState extends State<__CarouselWidget> {
  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: _carouselItems.length, 
      options: CarouselOptions(
        aspectRatio: 1/1,
        viewportFraction: 1,
        autoPlay: true,
        onPageChanged: (index, _) {
          widget.onPageChanged.call(index);
        },
      ),
      itemBuilder: (context, index, realIndex){
        final item = _carouselItems[index];
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: [
              SvgPicture.asset(item.imagePath,height: 200,width: 200,),
              SizedBox(height: 20,),
              Text(item.title,style: context.textTheme.titleLarge,textAlign: TextAlign.center,),
              SizedBox(height: 8,),
              Text(item.subTitle,style: context.textTheme.bodyMedium,textAlign: TextAlign.center,)
            ],
          ),
        );
      }, 
      );
  }
}