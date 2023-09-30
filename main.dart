import 'package:flutter/material.dart';
import 'details.dart';
import 'homepage.dart';
import 'settings.dart';
import 'info.dart';
void main() {
  runApp(const MyApp());
  
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Project',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 51, 145, 142)),
         useMaterial3: true,
      ),
      initialRoute: '/home',
      routes: {
        '/home':(context) => HomePage(),
        '/settings':(context) => SettingsPage(),
        '/details':(context) => DetailsPage(day: "",),
        '/person' :(context) => InfoPage(),
      }, 
    );
  }
}



