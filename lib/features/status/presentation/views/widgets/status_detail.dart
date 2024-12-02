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
                const Text(
                  'Marwan Ali',
                  style: Styles.textStyle16,
                ),
                
                Text(
                  'Today, 12:30 PM',
                  style: Styles.textStyle16.copyWith(fontSize: 14, color: Colors.grey),
                ),
        ],
      ),
    );
  }
}