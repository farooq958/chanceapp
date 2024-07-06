import 'dart:io';

import 'package:chance/SRC/Application/Utils/Extensions/responsive_extention.dart';
import 'package:chance/SRC/Presentation/Widgets/Dashboard/app_frame.dart';
import 'package:chance/gen/assets.gen.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quick_router/Routers/quick_routes.dart';
import 'package:flutter_svg/svg.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key,});



  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  String? token;





  @override
  void initState() {
    // init(context);
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 3),
    );
    _animation = CurvedAnimation(parent: _controller, curve: Curves.easeInExpo);
    _controller.forward();

    // Navigate to another screen after the splash animation finishes
    _controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        // Navigate to another screen (e.g., HomeScreen)
      context.pushAndRemoveUntil(const AppFrame(),(val)=>false);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    MediaQueryManager().initialize(context);
    return Scaffold(
      body: FadeTransition(
        opacity: _animation,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.r),
            height: 1.sh,
            width: 1.sw,
            child: Transform.translate(
                offset: const Offset(50,0),
                child: SvgPicture.asset(Assets.icons.chanceHeader ,fit: BoxFit.contain,))),
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
