import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:spg/view/home.dart';

void main() {
  runApp(const SuperPartyGame());
}

// This widget is the root of your application.
class SuperPartyGame extends StatelessWidget {
  const SuperPartyGame({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitDown, DeviceOrientation.portraitUp]
    );
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
  }
}
