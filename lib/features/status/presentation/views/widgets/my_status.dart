

import 'package:flutter/material.dart';

import 'my_status_detail.dart';
import 'my_status_img.dart';

class MyStatus extends StatelessWidget {
  const MyStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 90,
        width: double.infinity,
        child:  Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MyStatusImg(),
            SizedBox(width: 8,),
            MyStatusDetail()
          ],
        ),
      );
  }
}