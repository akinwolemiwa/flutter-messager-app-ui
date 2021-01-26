
import 'package:flutter/material.dart';
import 'package:messenger/models/chatUsersModel.dart';
import 'package:messenger/widgets/conversationList.dart';



class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: 'Kingpin', messageText: 'I have a job for you', imageURL: 'images/Frame 6.png', time: '5:21pm'),
    ChatUsers(name: 'Osita', messageText: 'What is this life?', imageURL: 'images/Frame 8.jpg', time: '1:00pm'),
    ChatUsers(name: 'Oshodi', messageText: 'I get your az, wey you de?', imageURL: 'images/Frame 11.png', time: '10:18am'),
    ChatUsers(name: 'Big Dogg', messageText: 'Chairman, wey my bone dey?', imageURL: 'images/Frame 5.png', time: 'Wednesday'),
    ChatUsers(name: 'Mr Donga', messageText: 'I cannot can', imageURL: 'images/Frame 9.png', time: 'Monday'),
    ChatUsers(name: 'Mr Swagg', messageText: 'Hey dearie', imageURL: 'images/Frame 12.png', time: '07/01/2021'),
    ChatUsers(name: 'Levi', messageText: 'Kill them all', imageURL: 'images/Frame 71.jpg', time: '27/10/2020'),
    ChatUsers(name: 'Boss Man', messageText: 'Do you have a hoil?', imageURL: 'images/Frame 10.png', time: '17/07/2020'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SafeArea(
              child: Padding(
                padding: EdgeInsets.only(left: 20, right: 20, top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text('Messages',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                    ),

                    Container(
                      padding: EdgeInsets.only(left: 8, right: 8, top: 2, bottom: 2),
                      height: 30,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.orange[100],
                      ),

                      child: Row(
                        children: <Widget>[
                          Icon(Icons.add,
                          color: Colors.orange[900],
                          size: 20,
                          ),
                          SizedBox(width: 2),
                          Text('Add New',
                          style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold, color: Colors.orange[900]),
                          ),
                        ]
                      ),
                    ),
                  ]
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.only(top: 16,left: 16,right: 16),
              child: TextField(
                decoration: InputDecoration(
                  hintText: 'Search',
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  prefixIcon: Icon(Icons.search,
                  color: Colors.grey[800], size: 20,
                  ),
                  filled: true,
                  fillColor: Colors.grey[200],
                  contentPadding: EdgeInsets.all(8),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                      borderSide: BorderSide(
                        color: Colors.grey.shade100
                      ),
                  ),
                ),
              ),
            ),

            ListView.builder(
              itemCount: chatUsers.length,
              shrinkWrap: true,
              padding: EdgeInsets.only(top: 16),
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index){
                return ConversationList(
                  name: chatUsers[index].name,
                  messageText: chatUsers[index].messageText,
                  imageURL: chatUsers[index].imageURL,
                  time: chatUsers[index].time,
                  isMessageRead: (index == 1 || index == 5 || index == 4 || index == 6 )?true:false,
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}