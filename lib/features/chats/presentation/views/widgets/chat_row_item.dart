
import 'package:flutter/material.dart';

import 'chat_image.dart';
import 'chat_msg_detail.dart';

class ChatRowItem extends StatelessWidget {
  const ChatRowItem({super.key, 
      required this.title,
      required this.phone,
      required this.date});
  final String title;
  final String phone;
  final String date;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        height: 70,
        width: double.infinity,
        child:  Row(
          children: [
            const ChatImage(),
            const SizedBox(width: 16),
            ChatMessageDetails(title: title, phone: phone, date: date),
          ],
        ),
      ),
    );
  }
}
