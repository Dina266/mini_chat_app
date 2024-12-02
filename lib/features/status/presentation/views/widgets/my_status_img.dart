
import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/app_colors.dart';

import '../../../../../core/constants/image_assets.dart';

class MyStatusImg extends StatelessWidget {
  const MyStatusImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(ImageAssets.person))),
      child: Align(
        alignment: Alignment(1.2,1.2),
        child: Container(
          width: 32,
          height: 32,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor, 
          ),
          child: Center(
            child: Container(
              width: 28,
              height: 28,
              alignment: Alignment.centerLeft, 
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white, 
              ),
              child: IconButton(
                onPressed: () {},
                icon:  const Icon(
                  Icons.add,
                  color: AppColors.primaryColor,
                  size: 14,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
