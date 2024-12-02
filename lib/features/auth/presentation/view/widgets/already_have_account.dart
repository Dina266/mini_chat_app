import 'package:flutter/material.dart';
import '../../../../../core/routes/routing.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../../../../core/themes/styles.dart';

class AlreadyHaveAccount extends StatelessWidget {
  const AlreadyHaveAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
         Text('Already have an account?',style: Styles.textStyle18.copyWith(fontSize: 14),),
        TextButton(
          onPressed: ()=> Navigator.pushReplacementNamed(context, Routing.login),
          child:  Text('Login here',style: Styles.textStyle18.copyWith(color: AppColors.primaryColor,fontSize: 12),),
        )
      ],
    );
  }
}
