import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/shared_widgets/custom_text_field.dart';

class PhoneTextField extends StatefulWidget {
  const PhoneTextField({super.key, required this.phoneController, this.onSaved});
  final void Function(String?)? onSaved;
  final TextEditingController phoneController;

  @override
  State<PhoneTextField> createState() => _PhoneTextFieldState();
}

class _PhoneTextFieldState extends State<PhoneTextField> {
  @override
  Widget build(BuildContext context) {
    return CustomTextField(
      controller: widget.phoneController,
      labelText: 'Enter your phone',
      hintText: 'Your phone',
      prefixIcon: Icons.phone,
      borderRadius: 12,
      onSaved: widget.onSaved,
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