import 'package:flutter/material.dart';
import 'package:ui_clone_whatsapp/whatsapphome.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Whatsapp",
      theme: new ThemeData(
        primaryColor: Color(0xff075E54),
        accentColor: Color(0xff25D336),
      ),
      home: new WhatsappHome(),
    );
  }
}
