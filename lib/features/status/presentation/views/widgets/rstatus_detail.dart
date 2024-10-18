import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class StatusDetails extends StatelessWidget {
  const StatusDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
                Text(
                  'Marwan Ali',
                  style: Styles.textStyle22.copyWith(color: Colors.black),
                ),
                
                Text(
                  'Today, 12:30 PM',
                  style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey),
                ),
        ],
      ),
    );
  }
}