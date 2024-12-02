
import 'package:flutter/material.dart';

class EditingFormField extends StatelessWidget {
  const EditingFormField({super.key, required this.initialVal});
  final String initialVal;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: TextFormField(
                initialValue: initialVal,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.transparent,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  contentPadding: const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                ),
              ),
    );
  }
}