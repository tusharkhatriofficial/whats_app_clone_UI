import 'package:flutter/material.dart';

class CallsScreen extends StatelessWidget {
  final image;
  final title;
  final timeStamp;
  final iconColor;
  final callIcon;
  final trailingIcon;
  CallsScreen({this.image, this.title, this.timeStamp, this.callIcon, this.iconColor, this.trailingIcon});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //MyStatus
        Container(
          height: 70,
          child: ListTile(
            contentPadding: EdgeInsets.only(right: 7, left: 10),
            leading: CircleAvatar(
              backgroundImage: NetworkImage(image),
            ),
            title: Text(
              title
            ),
            subtitle: Row(
              children: [
                Icon(callIcon, color: iconColor,),
                Text(timeStamp)
              ],
            ),
            trailing: Icon(
                trailingIcon,
              size: 25,
              color: Theme.of(context).primaryColor,
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
