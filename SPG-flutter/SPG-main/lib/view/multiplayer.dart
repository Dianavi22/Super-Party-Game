import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

import '../custom_widget/navigator.dart';
import 'battle_royal_menu.dart';
import 'hot_potato.dart';

class MultiplayerMenu extends StatelessWidget {
  const MultiplayerMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        const TextSPG(
          text: 'SUPER PARTY GAME',
          fontSize: TextSPG.sizeTitle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NoBackgroundButton(
              onPressed: () => SPGNavigator(context).push((_, __, ___) => const BattleRoyalMenu()),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/battle-royal.png'),
              ),
            ),
            NoBackgroundButton(
              onPressed: () => SPGNavigator(context).push((_, __, ___) => const HotPotato()),
              child: SizedBox(
                width: 100,
                height: 100,
                child: Image.asset('assets/images/patate.png'),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
