
import 'package:flutter/material.dart';
import 'status_detail.dart';
import 'viewed_statues_img.dart';

class ViewedUpdatesItem extends StatelessWidget {
  const ViewedUpdatesItem({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        ViewedStatusImg(),
        StatusDetails()
    ],);
  }
}