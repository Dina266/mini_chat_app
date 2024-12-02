import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_chat_app/core/routes/routing.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/themes/app_colors.dart';
// import '../../view_model/auth_cubit.dart';

class ButtonSignUp extends StatelessWidget {
  const ButtonSignUp({
    super.key,
    required this.formKey,
    required this.emailController,
    required this.passwordController,
  });

  final GlobalKey<FormState> formKey;
  final TextEditingController emailController;
  final TextEditingController passwordController;

  @override
  Widget build(BuildContext context) {
    return Center(
      // child: BlocListener<AuthCubit, AuthState>(
      //   listener: (context, state) {
      //     if (state is AuthLoading) {
      //       const CircularProgressIndicator();
      //     } else if (state is AuthSuccess) {
      //       Navigator.pushReplacementNamed(context, Routing.home);
      //     } else if (state is AuthFailure) {
      //       ScaffoldMessenger.of(context).showSnackBar(
      //         SnackBar(content: Text(state.errorMessage)),
      //       );
      //     }
      //   },
        child: CustomButton(
          label: 'Sign Up',
          backgroundColor: AppColors.primaryColor,
          width: 490,
          height: 70,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              // final authCubit = BlocProvider.of<AuthCubit>(context);
              // authCubit.createUserWithEmailAndPassword(
              //   email: emailController.text.trim(),
              //   password: passwordController.text.trim(),
              // );
            }
          },
        ),
      // ),
    );
  }
}
