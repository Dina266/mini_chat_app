import 'package:flutter/material.dart';

import '../../../../core/themes/app_colors.dart';
import '../../../calls/presentation/views/calls.dart';
import '../../../chats/presentation/views/chat_view.dart';
import '../../../status/presentation/views/status_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  HomeViewState createState() => HomeViewState();
}

class HomeViewState extends State<HomeView> {
  int _selectedIndex = 0;

  final List<Widget> _screens = const [
    ChatsView(),
    StatusView(),
    CallsView(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items:  const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.chat , color: AppColors.primaryColor,),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.lightbulb_rounded,color: AppColors.primaryColor),
            label: 'Status',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call,color: AppColors.primaryColor),
            label: 'Calls',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: AppColors.primaryColor,
        onTap: _onItemTapped,
      ),
    );
  }
}