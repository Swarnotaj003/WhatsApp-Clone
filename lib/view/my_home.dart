import 'package:flutter/material.dart';
import 'package:whatsapp_clone/view/my_app_bar.dart';
import 'package:whatsapp_clone/view/my_calls.dart';
import 'package:whatsapp_clone/view/my_chats.dart';
import 'package:whatsapp_clone/view/my_community.dart';
import 'package:whatsapp_clone/view/my_profile.dart';
import 'package:whatsapp_clone/view/my_status.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  int navBarIdx = 0;
  List<Widget> navPages = [MyChats(), MyStatus(), MyCommunity(), MyCalls()];

  void _onTapped(int index) {
    setState(() {
      navBarIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey[900],
        title: MyAppBar(),
      ),

      endDrawer: MyProfile(),

      // Show first page on start 
      body: navPages[navBarIdx],

      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.blueGrey[900],
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
        showUnselectedLabels: true,
        iconSize: 24,
        currentIndex: navBarIdx,
        onTap: _onTapped,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_outlined), 
            label: 'Chats', 
            backgroundColor: Colors.blueGrey[900], 
            activeIcon: Icon(Icons.chat),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.live_tv_sharp), 
            label: 'Updates', 
            backgroundColor: Colors.blueGrey[900],
            activeIcon: Icon(Icons.live_tv),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.groups_outlined),
            label: 'Community', 
            backgroundColor: Colors.blueGrey[900],
            activeIcon: Icon(Icons.groups),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.call_outlined), 
            label: 'Calls', 
            backgroundColor: Colors.blueGrey[900],
            activeIcon: Icon(Icons.call),
          ),
        ], 
      ),

    );
  }
}
