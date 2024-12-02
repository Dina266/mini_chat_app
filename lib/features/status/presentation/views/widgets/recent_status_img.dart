
import 'package:flutter/material.dart';

import '../../../../../core/constants/image_assets.dart';
import '../../../../../core/themes/app_colors.dart';

class RecentStatusImg extends StatelessWidget {
  const RecentStatusImg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 65,
      height: 65,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        color: AppColors.primaryColor, 
      ),
      child: Center(
        child: Container(
          width: 60,
          height: 60,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(ImageAssets.person)), 
          ),
        ),
      ),
    );
  }
}