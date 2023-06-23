import 'dart:developer';
import 'package:bloc_counter/todayTask/screens/home.dart';
import 'package:bloc_counter/todayTask/screens/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home/ui/home.dart';

void main() {
  runApp(const MyApp());
}

Color bgColorprimary = Colors.amber;
Color bgColorSecondary = Colors.grey.shade300;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            primaryColor: bgColorprimary,
            colorScheme:
                ColorScheme.fromSwatch().copyWith(secondary: bgColorSecondary)),
        // theme: ThemeData(
        //   primarySwatch: Colors.blue,
        //   elevatedButtonTheme: ElevatedButtonThemeData(
        //     style: ElevatedButton.styleFrom(
        //         backgroundColor: bgColor, foregroundColor: Colors.white),
        //   ),
        // ),
        home: HomeScreen());
  }
}

class ThemeColor {
  static Color primaryColor = Colors.purple; // Set a default color
}
