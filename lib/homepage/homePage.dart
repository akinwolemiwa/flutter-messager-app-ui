
import 'package:flutter/material.dart';
import 'package:messenger/chatpage/chatPage.dart';


class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChatPage(),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.orange[900],
        unselectedItemColor: Colors.grey[600],
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label:'Messages',
            backgroundColor: Colors.orange[900],
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.group_work),
            label:'Channels',
            backgroundColor: Colors.orange[900],
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label:'Profile',
            backgroundColor: Colors.orange[900],
          ),
        ],
      ),
    );
  }
}