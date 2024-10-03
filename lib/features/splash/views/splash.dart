import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/constants/image_assets.dart';
import 'package:mini_chat_app/core/themes/styles.dart';
import '../../../core/routes/routing.dart';

class SplashView extends StatefulWidget {
  const SplashView({super.key});

  @override
  State<SplashView> createState() => _SplashViewState();
}

class _SplashViewState extends State<SplashView> {
  @override
  void initState() {
    super.initState();
    redirect();
  }
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Center(child: Image.asset(ImageAssets.appLogo, height: 150,width: 150,)),
            const Text("The Best Chat app of this Century", style: Styles.textStyle18,)
          ],
        ),
      ),
    );
  }

  
  Future<void> redirect() async {
    await Future.delayed(const Duration(seconds: 2));
    Navigator.pushReplacementNamed(context, Routing.signUp);
  }
}