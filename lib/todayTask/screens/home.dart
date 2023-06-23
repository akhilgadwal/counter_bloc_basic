import 'package:bloc_counter/main.dart';
import 'package:bloc_counter/todayTask/components/buttom.dart';
import 'package:bloc_counter/todayTask/screens/branding_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

bool useTestData = false;

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColorSecondary,
      appBar: AppBar(
        backgroundColor: bgColorprimary,
        title: const Text('HomePage'),
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text('Drawer Header'),
              decoration: BoxDecoration(
                color: bgColorprimary,
              ),
            ),
            ListTile(
              title: Text('Use Test Data'),
              onTap: () {},
              trailing: Switch(
                activeColor: bgColorSecondary,
                onChanged: (bool value) {},
                value: useTestData,
              ),
            ),
            ListTile(
              title: Text('Set Branding'),
              onTap: () {
                // Navigate to the branding page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => BrandingPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(children: [
          //ElevatedButton(onPressed: () {}, child: Text('hello')),
          Center(
            child: Column(children: [
              MyButton(
                onTap: () {},
                text: '1',
              ),
              const SizedBox(
                height: 10,
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
            ]),
          )
          // MyButton(onTap: () {}, text: 'Button 1'),
          // const SizedBox(
          //   height: 10,
          // ),
          // MyButton(onTap: () {}, text: 'Button 2'),
          // const SizedBox(
          //   height: 10,
          // ),
          // MyButton(onTap: () {}, text: 'Button 3'),
          // const SizedBox(
          //   height: 10,
          // ),
          // MyButton(onTap: () {}, text: 'Button 4'),
          // const SizedBox(
          //   height: 10,
          // ),
          // MyButton(onTap: () {}, text: 'Button 5'),
        ]),
      ),
    );
  }
}
