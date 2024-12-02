import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/calls/presentation/views/widgets/calls_row_item.dart';

import '../../../../../core/themes/styles.dart';

class CallsBody extends StatelessWidget {
  const CallsBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Recent',
                    style: Styles.textStyle16.copyWith( color: Colors.grey)),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => const CallsRowItem(),)
            
          ],
        ),
      ),
    );
  }
}