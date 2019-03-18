import 'package:flutter/material.dart';
import 'package:whatsapp_clone/models/status_model.dart';

class Status extends StatefulWidget{
  @override
  _StatusState createState() => new _StatusState();
 }
class _StatusState extends State<Status> {
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     body: ListView(
       children: <Widget>[
         ListTile(
           leading: CircleAvatar(
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
             backgroundImage: NetworkImage(status[0].imgUrl),
           ),
           title: Text(
             status[0].name,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: Text("Añadir a mi estado"),
         ),
         Text(
             "Recientes",
           style: TextStyle(
             fontWeight: FontWeight.bold,
             color: Theme.of(context).primaryColor
           ),
         ),
         ListTile(
           leading: CircleAvatar(
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
             backgroundImage: NetworkImage(status[1].imgUrl),
           ),
           title: Text(
             status[1].name,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: Text("Añadir a mi estado"),
         ),
         Divider(),
         ListTile(
           leading: CircleAvatar(
             foregroundColor: Theme.of(context).accentColor,
             backgroundColor: Colors.grey,
             backgroundImage: NetworkImage(status[2].imgUrl),
           ),
           title: Text(
             status[2].name,
             style: TextStyle(fontWeight: FontWeight.bold),
           ),
           subtitle: Text("Añadir a mi estado"),
         ),
       ],
     ),
   );
  }
}