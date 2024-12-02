
import 'package:flutter/material.dart';

import '../../../../../core/themes/app_colors.dart';

class NumberUnreadMsg extends StatelessWidget {
  const NumberUnreadMsg({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 25,
      height: 25,
      alignment: Alignment.center,
      decoration: const BoxDecoration(
        color: AppColors.primaryColor,
        shape: BoxShape.circle
      ),
      child: const Text('2', style: TextStyle(color: Colors.white),),
    );
  }
}