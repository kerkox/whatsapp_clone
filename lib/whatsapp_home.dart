import 'package:flutter/material.dart';
import 'pages/calls.dart';
import 'pages/camera_alt.dart';
import 'pages/chat_list.dart';
import 'pages/status_screen.dart';

class WhatsAppHome extends StatefulWidget{

  final String title;

  WhatsAppHome(this.title);

  @override
  _WhatsAppHomeState createState() => _WhatsAppHomeState();

}

class _WhatsAppHomeState extends State<WhatsAppHome> with SingleTickerProviderStateMixin{

  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1);
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        bottom: TabBar(
          controller: _tabController,
          tabs: <Widget>[
            Tab(icon: Icon(Icons.camera_alt),),
            Tab(text: "CHATS"),
            Tab(text: "HISTORIAS",),
            Tab(text: "LLAMADAS",),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          Camera(),
          ChatList(),
          Status(),
          Calls()

        ],
      ),
    );
  }


}
