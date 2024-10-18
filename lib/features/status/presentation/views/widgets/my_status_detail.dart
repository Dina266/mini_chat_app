
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class MyStatusDetail extends StatelessWidget {
  const MyStatusDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                Text(
                  'My Status',
                  style: Styles.textStyle22.copyWith(color: Colors.black),
                ),
                
                Text(
                  'Tap To Add Status Update',
                  style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
        ],
      ),
    );
  }
}
