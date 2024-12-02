import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/constants/image_assets.dart';

class CustomLogo extends StatelessWidget {
  const CustomLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      height: 150,
      alignment: Alignment.topCenter,
      child: Image.asset(ImageAssets.appLogo),
    );
  }
}