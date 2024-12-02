
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
    return Expanded(
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height:MediaQuery.of(context).size.height/10.7 ,
            child:
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  title,
                  style: Styles.textStyle18.copyWith(color: Colors.black,fontWeight: FontWeight.bold),
                ),
                Text(
                  phone,
                  style: Styles.textStyle18.copyWith(fontSize: 14),
                ),
                
              ],
            ),
          ),
          const Spacer(),
          SizedBox(
            height: MediaQuery.of(context).size.height/12,
            child:
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  date,
                  style: Styles.textStyle18.copyWith(fontSize: 14),
                ),
                const NumberUnreadMsg()
              ],
            ),
          ),
          
        ],
      ),
    );
  }
}
