class ChatModel{
  final String name;
  String message;
  final String time;
  final String imageUrl;

  ChatModel({this.name,this.message,this.time,this.imageUrl});

}

List<ChatModel> messageData =[
  ChatModel(
    name: "Paul",
    message: "Hola Como estas",
    imageUrl: "https://avatars0.githubusercontent.com/u/13612740?s=460&v=4",
    time: "07:30"
  ),
  ChatModel(
    name: "Ker",
    message: "Hola Como estas",
    imageUrl: "https://i.ytimg.com/vi/_XRRSmZH7CM/maxresdefault.jpg",
    time: "07:30"
  ),
  ChatModel(
    name: "Paul",
    message: "Hola Como estas",
    imageUrl: "https://i.blogs.es/227dd0/1344598200_762487_1532629464_miniatura_normal/450_1000.jpg",
    time: "07:30"
  ),

];