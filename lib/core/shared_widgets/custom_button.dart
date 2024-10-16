import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;
  final Color? backgroundColor;
  final Color? textColor;
  final double? borderRadius;
  final IconData? icon;
  final double? padding;
  final double? fontSize;
  final double? width;
  final double? height;

  const CustomButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.borderRadius = 24.0,
    this.icon,
    this.padding = 16.0,
    this.fontSize = 16.0,
    this.width,
    this.height,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? Theme.of(context).primaryColor, 
        textStyle: TextStyle(
          color: textColor ?? Colors.white,
        ), // Text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius!), 
        ),
        padding: EdgeInsets.all(padding!),
        minimumSize: Size(width ?? 0, height ?? 0), 
      ),
      onPressed: onPressed,
      child: Text(
        label,
        style: TextStyle(fontSize: fontSize , color: Colors.white),
      ),
    );
  }
}
