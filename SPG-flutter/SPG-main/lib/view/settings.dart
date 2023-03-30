import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class Settings extends StatefulWidget {
  const Settings({super.key});

  @override
  State<StatefulWidget> createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return const BaseWidget(
      children: [
        TextSPG(
          text: 'Paramètres',
          fontSize: TextSPG.sizeSubTitle,
        ),
      ],
    );
  }
}
