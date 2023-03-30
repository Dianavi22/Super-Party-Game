import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

import '../custom_widget/navigator.dart';
import 'battle_royal_host.dart';

class BattleRoyalMenu extends StatefulWidget {
  const BattleRoyalMenu({super.key});

  @override
  State<StatefulWidget> createState() => _BattleRoyalMenuState();
}

class _BattleRoyalMenuState extends State<BattleRoyalMenu> {
  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        SizedBox(
          width: 210,
          height: 210,
          child: Stack(
            fit: StackFit.expand,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(8),
                  child: const TextSPG(
                    text: '\n\nBattle\nRoyal',
                    fontSize: TextSPG.sizeSubTitle,
                  ),
                ),
              ),
              Ink.image(
                image: const AssetImage(
                  "assets/images/battle-royal.png",
                ),
                fit: BoxFit.cover,
                child: InkWell(
                  borderRadius: BorderRadius.circular(12),
                  onTap: () {},
                ),
              ),
            ],
          ),
        ),
        const TextSPG(text: '\n'),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            NoBackgroundButton(
              onPressed: () => SPGNavigator(context).push((_, __, ___) => const BattleRoyalHost()),
              child: SizedBox(
                width: 100,
                // height: 100,
                child: Image.asset('assets/images/crown.png'),
              ),
            ),
          ],
        ),
        VerificationCode(
          keyboardType: TextInputType.number,
          length: 4,
          textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
          onCompleted: (String value) {
            print(value);
          },
          onEditing: (bool value) {  },
        ),
      ],
    );
  }
}
