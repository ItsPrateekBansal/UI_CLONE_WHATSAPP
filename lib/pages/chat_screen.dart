import 'package:flutter/material.dart';
import 'package:ui_clone_whatsapp/models/chatmodel.dart';

class ChatScreen extends StatefulWidget {
  @override
  _ChatScreenState createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: dummyData.length,
      itemBuilder: (context, index) => Column(
        children: [
          Divider(
            height: 10.0,
          ),
          new ListTile(
            leading: CircleAvatar(
              foregroundColor: Theme.of(context).primaryColor,
              backgroundImage: NetworkImage(dummyData[index].avatarUrl),
            ),
            title: new Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                new Text(
                  dummyData[index].name,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                new Text(
                  dummyData[index].time,
                  style: TextStyle(color: Colors.grey, fontSize: 14.0),
                ),
              ],
            ),
            subtitle: Text(dummyData[index].message),
          )
        ],
      ),
    );
  }
}
