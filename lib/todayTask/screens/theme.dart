import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../main.dart';
import '../components/buttom.dart';

class ThemeChangePage extends StatefulWidget {
  const ThemeChangePage({super.key});

  @override
  // ignore: library_private_types_in_public_api
  _ThemeChangePageState createState() => _ThemeChangePageState();
}

class _ThemeChangePageState extends State<ThemeChangePage> {
  void changeColor(Color color) {
    setState(() {
      ThemeColor.primaryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: ThemeColor.primaryColor,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Theme Change Example'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: ThemeColor.primaryColor,
                ),
                child: const Text('Change Theme Color'),
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) {
                      return AlertDialog(
                        title: const Text('Pick a color'),
                        content: SingleChildScrollView(
                          child: ColorPicker(
                            pickerColor: ThemeColor.primaryColor,
                            onColorChanged: changeColor,
                            pickerAreaHeightPercent: 0.8,
                          ),
                        ),
                        actions: <Widget>[
                          TextButton(
                            child: const Text('OK'),
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                          ),
                        ],
                      );
                    },
                  );
                },
              ),
              MyButton(
                onTap: () {},
                text: '2',
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: () {},
                text: '3',
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: () {},
                text: '4',
              ),
              const SizedBox(
                height: 10,
              ),
              MyButton(
                onTap: () {},
                text: '5',
              ),
              // SizedBox(height: 20),
              // Text(
              //   'Primary Color: ${ThemeColor.primaryColor}',
              //   style: TextStyle(fontSize: 18),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
