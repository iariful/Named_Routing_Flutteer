import 'package:flutter/material.dart';
import 'package:navegation/Pages/secound_page.dart';

class HomePage extends StatefulWidget {
  static const String routeName = '/';
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  double SliderValue =50;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Page'),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: SliderValue,
              min: 0,
              max: 100,
              divisions: 100,
              label: '${SliderValue.round()}',
              onChanged: (value) {
                setState(() {
                  SliderValue = value;
                });
              },
            ),
            Text('${SliderValue.round()}',style:  TextStyle(fontSize: 100.0),),
            ElevatedButton(
              onPressed: () => Navigator.pushNamed(context, SecoundPage.routeName,arguments: 'hello flutter'),
                child: const Text('Go to Next Page'),
            ),
          ],
        ),
      ),
    );
  }
}
