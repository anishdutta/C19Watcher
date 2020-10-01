import 'package:flutter/material.dart';
import 'signin.dart';
import 'signup.dart';
import 'ui/Dashboard.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,

        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
            Signin.id : (context) => Signin(),
        SignupPage.id: (context) => SignupPage(),
        HomePage.id: (context) => HomePage()

      },
      home: Signin(),
    );
  }
}


