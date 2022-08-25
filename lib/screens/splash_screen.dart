import 'dart:async';

import 'package:flutter/material.dart';
import 'package:football_scores/components/assets_manager.dart';
import 'package:football_scores/components/color_manager.dart';
import 'package:football_scores/components/routes_manager.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  bool loading = true;
  @override
  void initState() {
    super.initState();
    gotoNextPage();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: ColorManager.whiteColor,
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: SizedBox(
              height: size.height / 6,
              width: size.height / 6,
              child: Image.asset(ImageAssets.logo),
            ),
          ),
        ],
      ),
    );
  }

  gotoNextPage() async {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Routes.homePage);
    });
  }
}
