import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_text_field.dart';

class EmailTextField extends StatelessWidget {
  const EmailTextField({super.key, required this.emailController, this.onSaved});

  final TextEditingController emailController;
  final void Function(String?)? onSaved;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: emailController,
      labelText: 'Enter your email',
      hintText: 'Your Email',
      prefixIcon: Icons.email,
      onSaved: onSaved,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } else if (!val.contains('@')){
          return 'Email not valid';
        }
        else {
            return null;
        }
      },
      keyboardType: TextInputType.emailAddress,
    );
  }
}