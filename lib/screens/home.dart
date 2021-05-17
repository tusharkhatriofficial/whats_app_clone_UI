import 'package:flutter/material.dart';
import 'package:whats_app_clone/screens/calls.dart';
import 'package:whats_app_clone/screens/chats.dart';
import 'package:flutter/rendering.dart';
import 'package:whats_app_clone/screens/status.dart';

class MainScreen extends StatefulWidget {
  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> with SingleTickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this, initialIndex: 1)..addListener(() {
      setState(() {
        //TODO here
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        actions: [
          IconButton(onPressed: (){}, icon: Icon(Icons.search)),
          IconButton(onPressed: (){}, icon: Icon(Icons.more_vert)),
        ],
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          indicatorColor: Colors.white,
          indicatorSize: TabBarIndicatorSize.tab,
          labelPadding: EdgeInsets.all(12),
          tabs: [
            Icon(Icons.camera_alt),
            Container(
              width: 90,
                alignment: Alignment.center,
                child: Text("CHATS"),
            ),
            Container(
              width: 90,
              alignment: Alignment.center,
              child: Text("STATUS"),
            ),
            Container(
              width: 90,
              alignment: Alignment.center,
              child: Text("CALLS"),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          Text("Camera"),
          //chat screen below
          ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 5,
            itemBuilder: (context,index){
              return Column(
                children: [
                  ChatScreen(
                    image: 'https://cdnaws.sharechat.com/c7029d4c-d0fd-4d02-8fba-4bafad03dd2c-52c9e909-d281-4928-95cc-28549409ebae_compressed_40.jpg',
                    title: "Ajay",
                    msg: "Bhai aja Pubg Khelen ge",
                    msg_count: "2",
                    timeStamp: '12:00 PM',
                  ),
                  ChatScreen(
                    image: 'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                    title: "Anushka",
                    msg: "You usually exchange cryptocurrency with someone online",
                    msg_count: "1",
                    timeStamp: "03:35 PM",
                  ),
                ],
              );
            },
          ),
          //Status Screen below
          ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 1,
            itemBuilder: (context,index){
              return Column(
                children: [
                  StatusScreen(),


                ],
              );
            },
          ),
          ListView.builder(
            padding: EdgeInsets.all(0),
            itemCount: 1,
            itemBuilder: (context,index){
              return Column(
                children: [
                  CallsScreen(
                    image: 'https://images.unsplash.com/photo-1496440737103-cd596325d314?ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8Z2lybHxlbnwwfHwwfHw%3D&ixlib=rb-1.2.1&w=1000&q=80',
                    title: "Anushka",
                    timeStamp: "Yesterday.01:19 PM",
                    callIcon: Icons.call_received,
                    iconColor: Colors.green,
                    trailingIcon: Icons.call,
                  ),
                  CallsScreen(
                    image: 'https://cdnaws.sharechat.com/c7029d4c-d0fd-4d02-8fba-4bafad03dd2c-52c9e909-d281-4928-95cc-28549409ebae_compressed_40.jpg',
                    title: "Ajay",
                    timeStamp: "Yesterday.03:19 PM",
                    callIcon: Icons.call_made,
                    iconColor: Colors.red,
                    trailingIcon: Icons.videocam_rounded,
                  ),
                ],
              );
            },
          ),
          //Calls screen below
        ],
      ),
      floatingActionButton: _tabController.index == 1 ?
      FloatingActionButton(
        child: Icon(Icons.message),
        backgroundColor: Theme.of(context).primaryColorLight,
        onPressed: (){},
      ):FloatingActionButton(
        child: Icon(Icons.camera_alt),
    backgroundColor: Theme.of(context).primaryColorLight,
    onPressed: (){},
    ),

    );
  }
}
