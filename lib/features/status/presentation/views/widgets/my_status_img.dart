
import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/app_colors.dart';

import '../../../../../core/constants/image_assets.dart';

class MyStatusImg extends StatelessWidget {
  const MyStatusImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90,
      height: 90,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(image: AssetImage(ImageAssets.person))),
      child: Align(
        alignment: Alignment.bottomRight,
        child: Container(
          width: 35, 
          height: 35, 
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: AppColors.primaryColor, 
          ),
          child: Center(
            child: Container(
              width: 30, 
              height: 30,
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
                  size: 16, 
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
