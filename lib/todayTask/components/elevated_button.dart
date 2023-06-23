import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../main.dart';
import '../screens/home.dart';

class EleButton extends StatefulWidget {
  const EleButton({super.key});

  @override
  State<EleButton> createState() => _EleButtonState();
}

class _EleButtonState extends State<EleButton> {
  void changeColor(Color color) {
    setState(() {
      ThemeColor.primaryColor = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      child: Text('Change Theme Color'),
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
                    Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                        (_) => false);
                  },
                ),
              ],
            );
          },
        );
      },
    );
  }
}
