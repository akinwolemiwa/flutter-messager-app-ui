
import 'package:flutter/material.dart';
import 'package:messenger/models/chatUsersModel.dart';
import 'package:messenger/widgets/conversationList.dart';



class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<ChatUsers> chatUsers = [
    ChatUsers(name: 'Kingpin', messageText: 'I have a job for you', imageURL: 'images/Frame 6.png', time: 'now'),
    ChatUsers(name: 'General R', messageText: 'It always you', imageURL: 'images/Frame 8.png', time: 'now'),
    ChatUsers(name: 'Oshodi', messageText: 'I get your az, wey you de?', imageURL: 'images/Frame 11.png', time: 'now'),
    ChatUsers(name: 'Big Dogg', messageText: 'Chairman, wey my bone dey?', imageURL: 'images/Frame 5.png', time: 'yesterday'),
    ChatUsers(name: 'Mr Donga', messageText: 'I cannot can', imageURL: 'images/Frame 9.png', time: 'yesterday'),
    ChatUsers(name: 'Mr Swagg', messageText: 'Hey dearie', imageURL: 'images/Frame 12.png', time: '07 Jan'),
    ChatUsers(name: 'Pastor Matthew', messageText: 'Let us pray', imageURL: 'images/Frame 7.png', time: '27 Oct 2020'),
    ChatUsers(name: 'Boss Man', messageText: 'Do you have a hoil?', imageURL: 'images/Frame 10.png', time: '17 Jun 2020'),
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
                  isMessageRead: (index == 0 || index == 3)?true:false,
                );
              },
            ),
          ]
        ),
      ),
    );
  }
}