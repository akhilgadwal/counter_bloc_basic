import 'package:bloc_counter/todayTask/components/buttom.dart';
import 'package:bloc_counter/todayTask/screens/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

import '../../main.dart';
import '../components/elevated_button.dart';

class BrandingPage extends StatefulWidget {
  const BrandingPage({super.key});

  @override
  State<BrandingPage> createState() => _BrandingPageState();
}

class _BrandingPageState extends State<BrandingPage> {
  void changeColor(Color color) {
    setState(() {
      bgColorprimary = color;
    });
  }

  void changeSecondColor(Color color) {
    setState(() {
      bgColorSecondary = color;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: bgColorprimary,
        title: const Text('Branding Page'),
      ),
      body: Center(
        child: Column(children: [
          const SizedBox(
            height: 40,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgColorSecondary),
            child: Text('Change primary Color'),
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
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                              (_) => false);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          const SizedBox(
            height: 20,
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(backgroundColor: bgColorSecondary),
            child: Text('Change Secondary Color'),
            onPressed: () {
              showDialog(
                context: context,
                builder: (BuildContext context) {
                  return AlertDialog(
                    title: const Text('Pick a color'),
                    content: SingleChildScrollView(
                      child: ColorPicker(
                        pickerColor: ThemeColor.primaryColor,
                        onColorChanged: changeSecondColor,
                        pickerAreaHeightPercent: 0.8,
                      ),
                    ),
                    actions: <Widget>[
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => HomeScreen()),
                              (_) => false);
                        },
                      ),
                    ],
                  );
                },
              );
            },
          ),
          // ColorPicker(
          //   pickerColor: bgColorprimary,
          //   onColorChanged: changeColor,
          //   pickerAreaHeightPercent: 0.8,
          // ),
          // TextButton(
          //   child: const Text('Select Color'),
          //   onPressed: () {
          //     //Navigator.of(context).pop();
          //     Navigator.pushAndRemoveUntil(
          //         context,
          //         MaterialPageRoute(builder: (context) => HomeScreen()),
          //         (_) => false);
          //   },
          // ),
          //MyButton(onTap: () {}, text: 'Hello')
        ]),
      ),
    );
  }
}
