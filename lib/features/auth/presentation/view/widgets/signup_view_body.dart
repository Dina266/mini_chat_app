import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/auth/presentation/view/widgets/custom_logo.dart';
import 'already_have_account.dart';
import 'button_signup.dart';
import 'email_text_field.dart';
import 'password_text_field.dart';
import 'phone_text_field.dart';
import 'signin_text.dart';
import 'user_name_text_field.dart';

class SignUpViewBody extends StatelessWidget {
  const SignUpViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
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
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    const CustomLogo(),
                    const SizedBox(height: 10),
                    const TextTitle(title: 'Register to New Account'),
                    const SizedBox(height: 16),
                    UserNameTextField(nameController: nameController),
                    const SizedBox(height: 16),
                    EmailTextField(emailController: emailController),
                    const SizedBox(height: 16),
                    PhoneTextField(phoneController: phoneController),
                    const SizedBox(height: 10),
                    PasswordTextField(passwordController: passwordController),
                    const SizedBox(height: 20),
                    
                      ButtonSignUp(
                        formKey: formKey,
                        emailController: emailController,
                        passwordController: passwordController,
                      ),
                    const AlreadyHaveAccount(),
                  ],
                ),
              ),
            ),
          ),
        
      
    );
  }
}
