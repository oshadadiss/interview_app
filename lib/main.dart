import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:interview_app/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      initialRoute: Routs.homeScreen,
      getPages: Routs.routs,
      enableLog: true,
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.blue,
        primaryColor: Colors.blue
      ),
    );
  }
}
