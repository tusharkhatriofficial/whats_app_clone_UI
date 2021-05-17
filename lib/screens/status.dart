import 'package:flutter/material.dart';

class StatusScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        //MyStatus
        ListTile(
          contentPadding: EdgeInsets.only(right: 7, left: 10),
          leading: CircleAvatar(
            backgroundImage: NetworkImage("https://scontent-del1-1.xx.fbcdn.net/v/t1.6435-0/s180x540/133451198_213392877054962_4398861886172987636_n.png?_nc_cat=109&ccb=1-3&_nc_sid=09cbfe&_nc_ohc=4NVQuMZTe7MAX-Vo3qW&_nc_ht=scontent-del1-1.xx&tp=30&oh=8103222cd969ea7294d0b346a205632a&oe=60BF7615"),
          ),
          title: Text(
            "My Status",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          subtitle: Text("Tap to add status update"),
        ),
        //UpdateStatus
        Container(
          color: Colors.grey[200],
          padding: EdgeInsets.all(14),
          child: Row(
            children: [
              Text("Recent updates"),
            ],
          ),
        ),
        //Others Status
        ListTile(
          contentPadding: EdgeInsets.only(right: 7, left: 5),
          leading: Container(
            width: 70,
              height: 100,
              child: CircleAvatar(
            backgroundImage: NetworkImage('https://cdnaws.sharechat.com/c7029d4c-d0fd-4d02-8fba-4bafad03dd2c-52c9e909-d281-4928-95cc-28549409ebae_compressed_40.jpg'),
          )),
          title: Text("Ajay"),
          subtitle: Text("45 minutes ago"),
        ),
        Padding(
          padding: EdgeInsets.only(left: 65, right: 10),
          child: Divider(
            thickness: 0.5,
          ),
        ),
        ListTile(
          contentPadding: EdgeInsets.only(right: 7, left: 5),
          leading: Container(
              width: 70,
              height: 100,
              child: CircleAvatar(
                backgroundImage: NetworkImage('https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80'),
              )),
          title: Text("Anushka"),
          subtitle: Text("55 minutes ago"),
        ),
      ],
    );
  }
}
