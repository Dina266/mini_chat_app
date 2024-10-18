
import 'package:flutter/material.dart';

import '../../../../../core/constants/image_assets.dart';
import '../../../../../core/themes/app_colors.dart';

class ProfileImageWithEdit extends StatelessWidget {
  const ProfileImageWithEdit({super.key});

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: Container(
        width: 140,
        height: 140,
        decoration: const BoxDecoration(
            shape: BoxShape.circle,
            image: DecorationImage(image: AssetImage(ImageAssets.person))),
        child: Align(
          alignment: Alignment.bottomRight,
          child: Container(
            width: 50, 
            height: 50, 
            decoration:  const BoxDecoration(
              shape: BoxShape.circle,
              color: AppColors.primaryColor, 
            ),
            child: Center(
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.edit,
                    color: Colors.white,
                    size: 25, 
                  ),
                ),
              
            ),
          ),
        ),
      ),
    );
  }
}
