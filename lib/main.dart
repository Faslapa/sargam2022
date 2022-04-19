import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:online_food_ordering_web/screens/home/home_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyA87tVeE57E9Ef5uFd4HfPagks1UbINfeE",
          authDomain: "sargam-a6378.firebaseapp.com",
          projectId: "sargam-a6378",
          storageBucket: "sargam-a6378.appspot.com",
          messagingSenderId: "285218288784",
          appId: "1:285218288784:web:bc39c87f4f3335bb375415",
          measurementId: "G-K55PNTDN71",
          databaseURL: "https://sargam-a6378-default-rtdb.firebaseio.com/"));
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Sargam 2022',
        //removing debugbanner
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.blue,
          fontFamily: 'Montserrat',
        ),
        home: const HomeScreen());
  }
}
