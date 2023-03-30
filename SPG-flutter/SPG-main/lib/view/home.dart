import 'package:flutter/material.dart';
import 'package:spg/custom_widget/navigator.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

import 'main_menu.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => SPGNavigator(context).push((_, __, ___) => const MainMenu()),
      child: const BaseWidget(
        childrenAlign: MainAxisAlignment.spaceBetween,
        children: [
          Text(''),
          TextSPG(
            text: 'SUPER PARTY GAME',
            fontSize: 40,
          ),
          TextSPG(
            text: "Press to start",
          ),
        ],
      ),
    );
  }
}
