import 'package:flutter/material.dart';
import '../../../../../core/constants/image_assets.dart';
import '../../../../../core/themes/styles.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(),
          Center(
              child: Image.asset(ImageAssets.appLogo, height: 150, width: 150)),
          const SizedBox(height: 22),
          const Text("WhatsApp", style: Styles.textStyle22),
          const Spacer(),
          const Text("The Best Chat app of this Century",
              style: Styles.textStyle18),
          const SizedBox(height: 22),
        ],
      ),
    );
  }
}
