import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class Credits extends StatelessWidget {
  const Credits({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        const TextSPG(
          text: 'Crédits :\n',
          fontSize: TextSPG.sizeSubTitle,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(15),
            child: Stack(
              children: const [
                TextSPG(
                  text: 'Developpeurs :\n \nBrian\nLubin\nKévin\nJade',
                ),
                TextSPG(
                  text: '\nDivers :\n \nAssets\nMusiques',
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
