import 'package:flutter/material.dart';
import 'package:speed/constants.dart';

import 'screens/home/components/homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Plant App',
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: kPrimarycolor,
        ),
        scaffoldBackgroundColor: kBackkgroundColor,
        textTheme: Theme.of(context).textTheme.apply(bodyColor: kTextcolor),
      ),
      home: const HomeScreen(),
    );
  }
}
