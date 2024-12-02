import 'package:flutter/material.dart';
import 'button_login.dart';
import 'custom_logo.dart';
import 'email_text_field.dart';
import 'password_text_field.dart';
import 'register_text.dart';
import 'signin_text.dart';

class LoginViewBody extends StatelessWidget {
  const LoginViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(20),
        child: Form(
          key: formKey,
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(child: const CustomLogo()),
                const SizedBox(height: 10),
                Center(child: const TextTitle(title: 'Login to Your Account')),
                const SizedBox(height: 16),
                EmailTextField(
                  emailController: emailController,
                ),
                const SizedBox(height: 10),
                PasswordTextField(
                  passwordController: passwordController,
                ),
                const SizedBox(height: 20),
                ButtonLogin(
                  formKey: formKey,
                  email: emailController,
                  pass: passwordController,
                ),
                const SizedBox(height: 20),
                const RegisterText()
              ],
            ),
          ),
        ),
      ),
    );
  }
}
