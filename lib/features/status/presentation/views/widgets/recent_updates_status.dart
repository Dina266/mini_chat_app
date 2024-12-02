
import 'package:flutter/material.dart';

import 'recent_status_item.dart';

class RecentUpdatesStatus extends StatelessWidget {
  const RecentUpdatesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder:(context, index)=> const Padding(
        padding: EdgeInsets.all(8.0),
        child: RecentStatusItem(),
      )
      );
  }
}