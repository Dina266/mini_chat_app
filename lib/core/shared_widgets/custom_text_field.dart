import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String? labelText;
  final String? hintText;
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final Widget? suffixIcon;
  final bool obscureText;
  final TextInputType? keyboardType;
  final Color? fillColor;
  final Color? labelColor;
  final Color? textColor;
  final Color? iconColor;
  final Color? borderColor;
  final double borderRadius;
  final String? errorText;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final void Function(String?)? onSaved;

  const CustomTextField({
    super.key,
    this.labelText,
    this.onSaved,
    this.hintText,
    this.controller,
    this.prefixIcon,
    this.suffixIcon,
    this.obscureText = false,
    this.keyboardType = TextInputType.text,
    this.fillColor,
    this.labelColor,
    this.textColor,
    this.iconColor,
    this.borderColor,
    this.borderRadius = 24.0,
    this.errorText,
    this.onChanged, this.validator,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validator,
      onSaved: onSaved,
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      onChanged: onChanged,
      style: TextStyle(color: textColor ?? Colors.black),
      decoration: InputDecoration(
        
        labelText: labelText,
        labelStyle: TextStyle(color: labelColor ?? Colors.grey),
        hintText: hintText,
        fillColor: fillColor ?? Colors.white,
        filled: true,
        prefixIcon: prefixIcon != null ? Icon(prefixIcon, color: iconColor) : null,
        suffixIcon: suffixIcon,
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(24),
          borderSide: BorderSide(
            color: borderColor ?? Colors.grey.shade400,
            width: 1.5,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: borderColor ?? Theme.of(context).primaryColor,
            width: 2.0,
          ),
        ),
        errorText: errorText,
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Colors.red,
            width: 1.5,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(borderRadius),
          borderSide: BorderSide(
            color: Colors.red,
            width: 2.0,
          ),
        ),
      ),
    );
  }
}
