import 'package:flutter/material.dart';
import 'package:yosof/login_page.dart';
import 'package:yosof/profile_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
    debugShowCheckedModeBanner: false,
    routes: <String,WidgetBuilder>{
     '/profile':(BuildContext context) => ProfilePage(),
     '/login':(BuildContext context) => LoginPage(),
    },
      home:  LoginPage(),
    );
  }
}

