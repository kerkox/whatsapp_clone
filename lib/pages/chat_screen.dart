import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});

  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  Widget _buildTextComposer() {
    return IconTheme(
        data: IconThemeData(color: Theme.of(context).accentColor),
        child: Container(
          child: Row(
            children: <Widget>[
              Flexible(
                  child: TextField(
                controller: _textController,
              )),
              Container(
                child: IconButton(icon: Icon(Icons.send), onPressed: () {}),
              )
            ],
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(widget.name)),
        body: Container(
          child: Column(
            children: <Widget>[
              Container(
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}
