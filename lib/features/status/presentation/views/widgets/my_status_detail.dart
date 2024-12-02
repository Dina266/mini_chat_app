
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
               const Text(
                  'My Status',
                  style: Styles.textStyle16,
                ),
                
                Text(
                  'Tap To Add Status Update',
                  style: Styles.textStyle16.copyWith(color: Colors.grey,fontSize: 14),
                ),
        ],
      ),
    );
  }
}
