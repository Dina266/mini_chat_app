import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/routes/routing.dart';
import 'package:mini_chat_app/core/themes/styles.dart';
import 'package:mini_chat_app/features/chats/presentation/views/widgets/chat_body.dart';

import '../../../../core/themes/app_colors.dart';

class ChatsView extends StatelessWidget {
  const ChatsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              PopupMenuItem<String>(
                value: 'Profile',
                child: GestureDetector(
                  onTap: ()=>  Navigator.pushNamed(context,Routing.profile),
                  child: const Text('Profile')),
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
      body:const ChatBody(),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColors.primaryColor,
        onPressed: (){},
      child: const Icon(Icons.chat,color: Colors.white,)
    )
    );
  }
}