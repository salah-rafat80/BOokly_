import 'package:bookly/core/constant.dart';
import 'package:flutter/material.dart';

class SplashBody extends StatefulWidget {
  const SplashBody({super.key});

  @override
  State<SplashBody> createState() => _SplashBodyState();
}

class _SplashBodyState extends State<SplashBody>
    with SingleTickerProviderStateMixin {
  late AnimationController animatedContainer;
  late Animation<Offset> slidingAnimation;
  late Animation<Offset> slidingAnimation2;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    animatedContainer =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    slidingAnimation =
        Tween<Offset>(begin: const Offset(0, 5), end: const Offset(0, 0))
            .animate(animatedContainer);
    slidingAnimation2 =
        Tween<Offset>(begin: const Offset(0, -4), end: const Offset(0, 0))
            .animate(animatedContainer);
    animatedContainer.forward();
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, "homeScreen");
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        SlideTransition(position: slidingAnimation2, child: Image.asset(logo)),
        const SizedBox(
          height: 20,
        ),
        Center(
            child: SlideTransition(
                position: slidingAnimation,
                child: const Text(
                  "Read Free Books",
                  style: TextStyle(fontSize: 20),
                )))
      ],
    );
  }
}
