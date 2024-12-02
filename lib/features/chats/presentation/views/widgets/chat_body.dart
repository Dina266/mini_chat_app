import 'package:flutter/material.dart';

import 'chat_row_item.dart';

class ChatBody extends StatelessWidget {
  const ChatBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Column(
        children: [
          ChatRowItem(title: 'rowan', phone: '# 01011873749', date: '12:30'),
          ChatRowItem(
              title: 'mohab ali', phone: '# 01150453014', date: '12:30'),
          ChatRowItem(
              title: 'marwan ali', phone: '# 01125727329', date: '12:30'),
        ],
      ),
    );
  }
}
