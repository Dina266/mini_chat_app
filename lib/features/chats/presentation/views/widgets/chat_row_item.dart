
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
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: SizedBox(
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const ChatImage(),
            const SizedBox(width: 8),
            ChatMessageDetails(title: title, phone: phone, date: date),
          ],
        ),
      ),
    );
  }
}
