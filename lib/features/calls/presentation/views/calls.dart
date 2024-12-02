import 'package:flutter/material.dart';
import 'package:mini_chat_app/features/calls/presentation/views/widgets/calls_body.dart';

import '../../../../core/themes/styles.dart';

class CallsView extends StatelessWidget {
  const CallsView({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
        title: const Text('WhatsUp', style: Styles.textStyle24,),
        actions: [
          const Icon(Icons.search, size: 25,),
          const SizedBox(width: 12,),
          PopupMenuButton<String>(
            icon:const  Icon(Icons.more_vert,size: 25),
            onSelected: (String result) {
              if (result == 'New Group') {
                // print("New Group selected");
              } else if (result == 'Profile') {
                // print("Profile selected");
              }
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                value: 'New Group',
                child: Text('New Group'),
              ),
              const PopupMenuItem<String>(
                value: 'Profile',
                child: Text('Profile'),
              ),
              const PopupMenuItem<String>(
                value: 'Logout',
                child: Text('Logout'),
              ),
            ],
          ),
          const SizedBox(width: 12,),
        ],
      ),
        body: const CallsBody(),
      ),
    );
  }
}