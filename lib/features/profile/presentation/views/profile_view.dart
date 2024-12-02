import 'package:flutter/material.dart';
import 'package:mini_chat_app/core/themes/styles.dart';
import 'widgets/profile_body.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: const Text('Profile',style: Styles.textStyle24,),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: ProfileBody(),
      ),
    );
  }
}


