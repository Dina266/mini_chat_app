import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:mini_chat_app/core/routes/routing.dart';

import '../../../../../core/shared_widgets/custom_button.dart';
import '../../../../../core/themes/app_colors.dart';
import '../../view_model/cubit/auth_cubit.dart';

class ButtonLogin extends StatelessWidget {
  const ButtonLogin(
      {super.key,
      required this.formKey,
      required this.email,
      required this.pass});
  final GlobalKey<FormState> formKey;
  final TextEditingController email;
  final TextEditingController pass;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: BlocListener<AuthCubit, AuthState>(
        listener: (context, state) {
          if (state is AuthLoading) {
            const CircularProgressIndicator();
          } else if (state is AuthSuccess) {
            Navigator.pushReplacementNamed(context, Routing.home);
          } else if (state is AuthFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text(state.errorMessage)),
            );
          }
        },
        child: CustomButton(
          label: 'Sign In',
          backgroundColor: AppColors.primaryColor,
          width: 490,
          height: 70,
          onPressed: () {
            if (formKey.currentState!.validate()) {
              BlocProvider.of<AuthCubit>(context).loginWithEmailAndPassword(email: email.text.trim(), password: pass.text.trim());
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Validation Successful')),
              );
              
            }
          },
        ),
      ),
    );
  }
}
