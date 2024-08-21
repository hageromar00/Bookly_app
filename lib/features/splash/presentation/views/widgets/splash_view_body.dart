import 'package:bookly_app/const.dart';
import 'package:bookly_app/core/utils/assets.dart';
import 'package:bookly_app/features/home/presentation/views/home_view.dart';
import 'package:bookly_app/features/splash/presentation/views/widgets/animate_slide_text.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animate;
  late Animation<Offset> slideingAnimation;
  @override
  @override
  void initState() {
    super.initState();
    initSlideAnimate();
    NavigatorToHome();
  }

  void NavigatorToHome() {
    Future.delayed(const Duration(seconds: 2), () {
      GoRouter.of(context).push('/homeview');
      // Get.to(()=>const HomeViews(),transition: Transition.fade,duration: kTranstionDuration);
    });
  }

  void initSlideAnimate() {
    animate =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));

    slideingAnimation =
        Tween<Offset>(begin: const Offset(0, 14), end: const Offset(0, 0))
            .animate(animate);
    animate.forward();
    // slideingAnimation.addListener(() {
    //   setState(() {});
    // });
  }

  @override
  void dispose() {
    super.dispose();
  }

  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsDate.logo),
        slideText(slideingAnimation: slideingAnimation)
      ],
    );
    // return slideText(slideingAnimation: slideingAnimation);
  }
}
