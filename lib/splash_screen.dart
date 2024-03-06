import 'dart:async';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'resource/app_Assets.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Image.asset(
          AppAssets.splash,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}