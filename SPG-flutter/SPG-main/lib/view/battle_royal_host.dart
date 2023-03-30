import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class BattleRoyalHost extends StatefulWidget {
  const BattleRoyalHost({super.key});

  final int code = 1234;
  final int nbPlayer = 4;

  @override
  State<StatefulWidget> createState() => _BattleRoyalHost();
}

class _BattleRoyalHost extends State<BattleRoyalHost> {
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
        TextSPG(text: '${widget.nbPlayer} Joueurs'),
        const TextSPG(text: '\n'),
        TextSPG(text: 'Code: ${widget.code}'),
      ],
    );
  }
}
