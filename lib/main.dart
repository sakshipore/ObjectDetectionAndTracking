import 'package:flutter/material.dart';
import 'package:object_detection_and_tracking/screens/home_screen.dart';
import 'package:object_detection_and_tracking/utils/routes.dart';
import 'package:camera/camera.dart';

List<CameraDescription> cameras = [];

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  cameras = await availableCameras();

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, 
    initialRoute: MyRoutes.homeRoute,
    routes: {
      MyRoutes.homeRoute: (context)=>HomeScreen(),
    });
  }
}
