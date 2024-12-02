
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class CallsDetails extends StatelessWidget {
  const CallsDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start, 
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start, 
            children: [
              Text(
                'Marwan Ali',
                style: Styles.textStyle16,
              ),
              const SizedBox(height: 4),
              Text(
                'Today 10:30 PM',
                style: Styles.textStyle16.copyWith(color: Colors.grey,fontWeight: FontWeight.w500,fontSize: 14),
              ),
            ],
          ),
          IconButton(
            onPressed: () {
            },
            icon: const Icon(Icons.call),
          ),
        ],
      ),
    );
  }
}
