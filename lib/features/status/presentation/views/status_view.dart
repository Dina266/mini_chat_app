import 'package:flutter/material.dart';
import '../../../../core/themes/styles.dart';
import 'widgets/status_body.dart';

class StatusView extends StatelessWidget {
  const StatusView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('WhatsUp', style: Styles.textStyle24,),
        actions: const [
          Icon(Icons.search, size: 35,),
          SizedBox(width: 12,),
          Icon(Icons.more_vert,size: 35,),
          SizedBox(width: 12,)
        ],
      ),
      body: const StatusBody(),
    );
  }
}