
import 'package:flutter/material.dart';

import 'viewed_updates_item.dart';

class ViewedUpdatesStatus extends StatelessWidget {
  const ViewedUpdatesStatus({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: 2,
      itemBuilder: (context,index)=>const Padding(
        padding: EdgeInsets.all(8.0),
        child: ViewedUpdatesItem(),
      ));
  }
}