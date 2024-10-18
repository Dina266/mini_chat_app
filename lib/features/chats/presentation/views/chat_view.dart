import 'package:flutter/material.dart';
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
        actions: const [
          Icon(Icons.search, size: 35,),
          SizedBox(width: 12,),
          Icon(Icons.more_vert,size: 35,),
          SizedBox(width: 12,)
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