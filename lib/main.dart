import 'package:flutter/material.dart';
import 'package:ui_clone_whatsapp/whatsapphome.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras;

Future<Null> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  cameras = await availableCameras();
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
      home: new WhatsappHome(cameras),
    );
  }
}
