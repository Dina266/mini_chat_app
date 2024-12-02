import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/app_colors.dart';

import '../../../../../core/routes/routing.dart';
import '../../../../../core/themes/styles.dart';

class RegisterText extends StatelessWidget {
  const RegisterText({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Don\'t have an account?',style: Styles.textStyle18.copyWith(fontSize: 14),),
        TextButton(
          onPressed: ()=> Navigator.pushReplacementNamed(context, Routing.signUp),
          child:  Text('Register here',style: Styles.textStyle18.copyWith(color: AppColors.primaryColor,fontSize: 12),),
        )

      ],
    );
  }
}