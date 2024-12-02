import 'package:flutter/material.dart';

import '../../../../../core/constants/image_assets.dart';

class ChatImage extends StatelessWidget {
  const ChatImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(ImageAssets.person))),
    );
  }
}