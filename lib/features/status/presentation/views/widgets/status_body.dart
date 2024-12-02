
import 'package:flutter/material.dart';
import '../../../../../core/themes/styles.dart';
import 'my_status.dart';
import 'recent_updates_status.dart';
import 'viewed_updates_status.dart';

class StatusBody extends StatelessWidget {
  const StatusBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top:16.0, left:16),
      child: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.of(context).size.width/0.4,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const MyStatus(),
              const SizedBox(height: 16),
              Text('Recent Updates',
                    style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey)),
                    const RecentUpdatesStatus(),
                    Text('Viewed Updates',
                    style: Styles.textStyle18.copyWith(fontWeight: FontWeight.bold, color: Colors.grey)),
                    const ViewedUpdatesStatus()
          
            ],
          ),
        ),
      ),
    );
  }
}

