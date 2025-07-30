import 'package:expenses_tracker_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MyAppView extends StatelessWidget {
  const MyAppView({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Expense Tracker",
      theme: ThemeData(colorScheme: ColorScheme.light(
        surface: const Color.fromARGB(255, 230, 230, 230),
        onSurface: Colors.black,
        primary: Colors.amberAccent,
        secondary: Colors.purple,
        tertiary: Colors.teal,
        outline: Colors.grey,
      ),
      ),
      home: HomeScreen(),
    );
  }
}
