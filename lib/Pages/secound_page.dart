import 'package:flutter/material.dart';

class SecoundPage extends StatefulWidget {
  static const String routeName = '/secound';
  const SecoundPage({Key? key}) : super(key: key);

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  late String msg;

  @override
  Widget build(BuildContext context) {
    print('bulid Call');
    return Scaffold(
      appBar: AppBar(title: const Text('SecoundPage'),),
      body: Center(
        child: Text(msg),
      ),
    );
  }


  @override
  void didChangeDependencies() {
    msg = ModalRoute.of(context)!.settings.arguments as String;
    super.didChangeDependencies();
  }
}
