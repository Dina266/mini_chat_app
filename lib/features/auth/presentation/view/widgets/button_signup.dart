import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/routes/routing.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/themes/app_colors.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({super.key, required this.formKey});
  final GlobalKey<FormState> formKey;

  @override
  Widget build(BuildContext context) {
    return  Center(
        child: CustomButton(
        label: 'Sign Up',
        backgroundColor: AppColors.primaryColor,
        width: 490,
        height: 70,
        onPressed: () {
        if (formKey.currentState!.validate()) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('Validation Successful')),
          );
          Navigator.pushReplacementNamed(context, Routing.signUp);
        } 
      },
      ),
      );
  }
}