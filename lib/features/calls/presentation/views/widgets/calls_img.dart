import 'package:flutter/material.dart';

import '../../../../../core/constants/image_assets.dart';

class CallsImg extends StatelessWidget {
  const CallsImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Center(
        child: Container(
          width: 65,
          height: 65,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(ImageAssets.person)), 
          ),
        ),
      ),
    );
  }
}