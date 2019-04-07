import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final String name;

  ChatScreen({this.name});

  @override
  _ChatScreenState createState() => new _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> with TickerProviderStateMixin {
  final TextEditingController _textController = new TextEditingController();
  final List<ChatMessage> _messages = <ChatMessage>[];
  bool _isTyped = false;
  void _handledSubmit(String text){
  _textController.clear();
    ChatMessage message = ChatMessage(
      text: text,
      animationController: AnimationController(
        duration: Duration(milliseconds: 700),
        vsync: this
      ),
      name:widget.name,
    );

    setState(() {
      _isTyped = false;
      _messages.add(message);
    });
    message.animationController.forward();
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
                    onChanged: (String text){
                  setState(() {
                    _isTyped = text.length>0;
                  });
                    },
              )),
              Container(
                child: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: _isTyped? ()=>_handledSubmit(_textController.text):null
                ),
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
              Flexible(
                child: ListView.builder(
                  itemBuilder:(_,int index)=> _messages[index],
                  itemCount: _messages.length,
                ),
              ),
              Divider(height: 1.0),
              Container(
                child: _buildTextComposer(),
              )
            ],
          ),
        ));
  }
}

class  ChatMessage extends StatelessWidget{

  ChatMessage({this.text,this.animationController,this.name});
  final String name;
  final AnimationController animationController;
  final String text;

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
              child: CircleAvatar(child: Text(name[0]),),
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
