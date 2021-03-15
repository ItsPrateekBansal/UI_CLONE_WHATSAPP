import 'package:flutter/material.dart';
import 'package:ui_clone_whatsapp/pages/camera_screen.dart';
import 'package:ui_clone_whatsapp/pages/chat_screen.dart';
import 'package:ui_clone_whatsapp/pages/status_screen.dart';
import 'package:ui_clone_whatsapp/pages/call_screen.dart';

// ignore: must_be_immutable
class WhatsappHome extends StatefulWidget {
  var cameras;
  WhatsappHome(this.cameras);
  @override
  _WhatsappHomeState createState() => _WhatsappHomeState();
}

class _WhatsappHomeState extends State<WhatsappHome>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = new TabController(vsync: this, initialIndex: 1, length: 4);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("WhatsApp"),
        elevation: 0.7,
        bottom: new TabBar(
          controller: _tabController,
          indicatorColor: Colors.white,
          tabs: [
            new Tab(icon: Icon(Icons.camera_alt)),
            new Tab(text: "CHATS"),
            new Tab(text: "STATUS"),
            new Tab(text: "CALLS"),
          ],
        ),
        actions: [
          Icon(Icons.search),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
          ),
          Icon(Icons.more_vert)
        ],
      ),
      body: new TabBarView(
        controller: _tabController,
        children: [
          new CameraScreen(widget.cameras),
          new ChatScreen(),
          new StatusScreen(),
          new CallsScreen(),
        ],
      ),
      floatingActionButton: new FloatingActionButton(
        onPressed: () {
          print("FAB PRESSED");
        },
        backgroundColor: Theme.of(context).primaryColor,
        child: Icon(Icons.message),
      ),
    );
  }
}
