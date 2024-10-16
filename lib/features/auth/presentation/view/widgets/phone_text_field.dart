import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_text_field.dart';

class PhoneTextField extends StatelessWidget {
  const PhoneTextField({super.key, required this.phoneController});

  final TextEditingController phoneController;
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: phoneController,
      labelText: 'Enter your phone',
      hintText: 'Your phone',
      prefixIcon: Icons.phone,
      borderRadius: 12,
      validator: (val){
        if(val!.isEmpty) {
          return 'This Field is Required';
        } 
        else {
            return null;
        }
      },
      keyboardType: TextInputType.phone,
    );
  }
}