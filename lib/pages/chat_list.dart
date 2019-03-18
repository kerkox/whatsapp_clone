import 'package:flutter/material.dart';
import '../models/ChatModel.dart';

class ChatList extends StatefulWidget{
  @override
  _ChatListState createState() => _ChatListState();
}

class _ChatListState extends State<ChatList>{
  @override
  Widget build(BuildContext context) {

    return ListView.builder(
      itemCount: messageData.length,
      itemBuilder: (context,i) => Column(
        children: <Widget>[
          Divider(
            height: 10.0,
            color: Colors.blueAccent,
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(messageData[i].imageUrl),
            ),
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  messageData[i].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  messageData[i].time,
                  style: TextStyle(color: Colors.grey,fontSize: 14.0),
                ),

              ],
            ),
            subtitle: Container(
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                messageData[i].message,
                style: TextStyle(color: Colors.grey, fontSize: 15.0),
              ),
            ),
          )
        ],
      ),

    );
  }

}

