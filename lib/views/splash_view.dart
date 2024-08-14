import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:planet/views/home_view.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      Get.to(const HomeView(),
          transition: Transition.rightToLeftWithFade,
          duration: const Duration(milliseconds: 1000));
    });
  }

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: SizedBox(
          height: height,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/logo2.png',
                  height: height * .08,
                ),
              ),
              SizedBox(
                height: height * .1,
              ),
            ],
          ),
        ));
  }
}
