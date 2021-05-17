import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  final image;
  final title;
  final msg;
  final msg_count;
  final timeStamp;
  ChatScreen({this.image, this.title, this.msg, this.msg_count, this.timeStamp});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 70,
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 7, left: 10),
            leading: CircleAvatar(backgroundImage: NetworkImage(image),),
            title: Text(title, style: TextStyle(fontWeight: FontWeight.bold),),
            subtitle: Text(msg),
            trailing: Column(
              children: [
                Text(timeStamp),
                Container(
                  width: 24,
                  child: CircleAvatar(
                    backgroundColor: Theme.of(context).primaryColorLight,
                    child: Text(
                        msg_count,
                      style: TextStyle(
                        color: Colors.white
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 65, right: 10),
          child: Divider(
            thickness: 0.5,
          ),
        ),
      ],
    );
  }
}
