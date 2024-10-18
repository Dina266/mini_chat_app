
import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';
import 'number_unread_msg.dart';

class ChatMessageDetails extends StatelessWidget {
  const ChatMessageDetails(
      {super.key,
      required this.title,
      required this.phone,
      required this.date});
  final String title;
  final String phone;
  final String date;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width/1.5,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title,
                style: Styles.textStyle22.copyWith(color: Colors.black),
              ),
              
              Text(
                date,
                style: Styles.textStyle18,
              ),
            ],
          ),
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width/1.5,
          child:
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                phone,
                style: Styles.textStyle18,
              ),
              const NumberUnreadMsg()
            ],
          ),
        ),
        
      ],
    );
  }
}
