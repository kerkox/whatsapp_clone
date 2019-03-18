import './ChatModel.dart';

class StatusModel{
  final String imgUrl;
  final String name;
  final String time;

  StatusModel({this.name,this.imgUrl,this.time});


}

List<StatusModel> status = [
  new StatusModel(
    name: messageData[0].name,
    time: "Hoy, 3:00AM",
    imgUrl: messageData[0].imageUrl
  ),
  new StatusModel(
    name: messageData[1].name,
    time: "Hoy, 3:00AM",
    imgUrl: messageData[1].imageUrl
  ),
  new StatusModel(
    name: messageData[2].name,
    time: "Hoy, 3:00AM",
    imgUrl: messageData[2].imageUrl
  ),
];