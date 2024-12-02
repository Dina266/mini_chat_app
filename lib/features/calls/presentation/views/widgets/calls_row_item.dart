import 'package:flutter/material.dart';
import 'calls_details.dart';
import 'calls_img.dart';

class CallsRowItem extends StatelessWidget {
  const CallsRowItem({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Row(
      children: [
        CallsImg(),
        CallsDetails()
      ]
      
    );
  }
}
