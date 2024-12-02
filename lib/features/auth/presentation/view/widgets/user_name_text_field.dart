import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_text_field.dart';

class UserNameTextField extends StatelessWidget {
  const UserNameTextField({super.key, required this.nameController});

  final TextEditingController nameController;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: nameController,
      labelText: 'Enter your name',
      hintText: 'Your Name',
      prefixIcon: Icons.person,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } 
        else {
            return null;
        }
      },
      keyboardType: TextInputType.name,
    );
  }
}