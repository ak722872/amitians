import 'dart:ui';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:rive/rive.dart';
import '../onboarding_screen/widgets/animated_btn.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late RiveAnimationController _btnAnimationController;

  @override
  void initState() {
    _btnAnimationController = OneShotAnimation("active", autoplay: false);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
              // height: 100,
              bottom: 200,
              left: 100,
              width: MediaQuery.of(context).size.width * 1.7,
              child: Image.asset("assets/Backgrounds/Spline.png")),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(),
          )),
          const RiveAnimation.asset("assets/RiveAssets/shapes.riv"),
          Positioned.fill(
              child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
            child: SizedBox(),
          )),
          SafeArea(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Spacer(),
                SizedBox(
                  width: 260,
                  child: Column(
                    children: const [
                      Text(
                        "Learn design & Code",
                        style: TextStyle(
                            fontSize: 60, fontFamily: "Poppins", height: 1.2),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                          "Don't skip design. Learn Design and code, by building real apps with flutter and Swift . Complete courses about the best tools ")
                    ],
                  ),
                ),
                const Spacer(
                  flex: 2,
                ),
                AnimatedBtn(
                  btnAnimationController: _btnAnimationController,
                  press: () {
                    _btnAnimationController.isActive = true;
                  },
                ),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 24),
                  child: Text(
                      "Purchase includes access to 30+ courses, 240+ premium tutorials, 120+ hoursof videos, source files and certificates"),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
