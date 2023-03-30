import 'package:flutter/material.dart';
import 'package:spg/custom_widget/navigator.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';
import 'package:spg/view/contact.dart';
import 'package:spg/view/credits.dart';

import 'legal_notice.dart';
import 'multiplayer.dart';
import 'solo_mode.dart';

class MainMenu extends StatelessWidget {
  const MainMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        const TextSPG(
          text: '\n\n\n\n\n\n\n'
        ),
        const TextSPG(
          text: 'SUPER PARTY GAME',
          fontSize: TextSPG.sizeTitle,
        ),
        NoBackgroundButton(
          onPressed: () => SPGNavigator(context).push((_, __, ___) => const SoloMenu()),
          child: const TextSPG(text: "Mode Solo"),
        ),
        NoBackgroundButton(
          onPressed: () => SPGNavigator(context).push((_, __, ___) => const MultiplayerMenu()),
          child: const TextSPG(text: "Mode Multi"),
        ),
        const TextSPG(
          text: ""
        ),
        NoBackgroundButton(
          onPressed: () => SPGNavigator(context).push((_, __, ___) => const Credits()),
          child: const TextSPG(text: "Crédits"),
        ),
        NoBackgroundButton(
          onPressed: () {
            print('shop');
          },
          child: const TextSPG(text: "Shop"),
        ),
        const TextSPG(
          text: "",
        ),
        NoBackgroundButton(
          onPressed: () => SPGNavigator(context).push((_, __, ___) => const LegalNotice()),
          child: const TextSPG(
            text: "Mentions légages",
            fontSize: TextSPG.sizeShy,
          ),
        ),
        NoBackgroundButton(
          onPressed: () => SPGNavigator(context).push((_, __, ___) => const Contact()),
          child: const TextSPG(
            text: "Nous contacter",
            fontSize: TextSPG.sizeShy,
          ),
        ),
      ],
    );
  }
}
