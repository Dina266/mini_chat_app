import 'package:flutter/material.dart';

import 'app_colors.dart';

abstract class Styles { 
  static const TextStyle textStyle18 = TextStyle(
    fontSize: 18,
    color:  Colors.black,
    fontWeight : FontWeight.w500
  );
  static const  TextStyle textStyle22 = TextStyle(
    fontSize: 22,
    color:  AppColors.primaryColor,
    fontWeight : FontWeight.bold
  );
}