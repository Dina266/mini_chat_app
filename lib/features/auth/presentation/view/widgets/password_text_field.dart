import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_text_field.dart';

class PasswordTextField extends StatefulWidget {
  const PasswordTextField({super.key, required this.passwordController, this.onSaved});

  final TextEditingController passwordController;
  final void Function(String?)? onSaved;

  @override
  PasswordTextFieldState createState() => PasswordTextFieldState();
}

class PasswordTextFieldState extends State<PasswordTextField> {
  bool isPasswordVisible = false;

  void togglePasswordVisibility() {
    setState(() {
      isPasswordVisible = !isPasswordVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.passwordController,
      labelText: 'Enter your password',
      hintText: 'Your Password',
      prefixIcon: Icons.lock,
      borderRadius: 12,
      obscureText: !isPasswordVisible, // Toggle visibility
      suffixIcon: IconButton(
        icon: Icon(
          isPasswordVisible ? Icons.visibility : Icons.visibility_off,
        ),
        onPressed: togglePasswordVisibility, 
      ),
      onSaved: widget.onSaved,
      validator: (val) {
        if (val!.isEmpty) {
          return 'This Field is Required';
        } else if (val.length <6) {
          return 'password too weak';
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.visiblePassword,
    );
  }
}
