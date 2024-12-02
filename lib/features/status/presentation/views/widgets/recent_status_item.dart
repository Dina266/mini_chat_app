import 'package:flutter/material.dart';

import 'status_detail.dart';
import 'recent_status_img.dart';

class RecentStatusItem extends StatelessWidget {
  const RecentStatusItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        RecentStatusImg(),
        StatusDetails()
    ],);
  }
}