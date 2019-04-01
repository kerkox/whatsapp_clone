import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;
  ChatScreen({this.name});

  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  final TextEditingController _textController = new TextEditingController();

  _handleSubmit(String text){
    print(text);
  }

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
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () => _handleSubmit(_textController.text)),
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

class ChatMessage extends StatelessWidget{
  final String name;
  final AnimationController animationController;
  final String text;

  ChatMessage({this.text,this.animationController, this.name});
  @override
  Widget build(BuildContext context) {
    return SizeTransition(
      sizeFactor: CurvedAnimation(
          parent: animationController,
          curve: Curves.easeOut
      ),
      child: Container(
        child: Row(
          children: <Widget>[
            Container(
              child: CircleAvatar(child: Text(name[0])),
            ),
            Expanded(
              child: Column(
                children: <Widget>[
                  Text(name),
                  Container(
                    child: Text(text),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

}
