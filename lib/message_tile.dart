import 'package:flutter/material.dart';
import 'package:whatsapp_ui/message.dart';

class MessageTile extends StatelessWidget {
  const MessageTile({Key? key, @required this.message}) : super(key: key);

  final Message? message;
  @override
  Widget build(BuildContext context) {
    // ignore: sized_box_for_whitespace
    return ListTile(
        horizontalTitleGap: 10,
        title: Text("${message!.name}"),
        trailing: Text("${message!.time}"),
        subtitle: Text("${message!.txtMsg}"),
        leading: CircleAvatar(
          radius: 40,
          backgroundImage: NetworkImage("${message!.imgPath}"),
        ));
  }
}
