import 'package:flutter/material.dart';
import 'package:spg/custom_widget/navigator.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';
import 'package:spg/unity.dart';

class SoloMenu extends StatelessWidget {
  const SoloMenu({super.key});

  static const List<String> arrayRoute = [
    "assets/images/n_bois.jpg",
    "assets/images/n_cabane.png",
    "assets/images/n_ville.jpg",
    "assets/images/n_nuit.jpg",
    "assets/images/n_vallee.png",
    "assets/images/n_reflet.png",
    "assets/images/n_nuage.jpg",
    "assets/images/n_tour.jpg",
    "assets/images/n_lampe.png",
    "assets/images/n_lac.png",
    "assets/images/n_foret.png",
    "assets/images/n_falaise.png",
    "assets/images/n_chateau.png",
    "assets/images/n_crepuscule.jpg",
    "assets/images/n_feu.png",
    "assets/images/n_enfer.jpg",
  ];

  SizedBox createImage(String route) {
    return SizedBox(
      child: Image.asset(
        route,
        width: 100,
        height: 100,
        fit: BoxFit.cover,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      childrenAlign: MainAxisAlignment.spaceAround,
      children: [
        const TextSPG(
          text: 'Mode Solo',
          fontSize: TextSPG.sizeSubTitle,
        ),
        Wrap(
          spacing: 4.0,
          runSpacing: 5.0,
          children: List<Widget>.generate(
            arrayRoute.length,
            (int index) {
              return GestureDetector(
                onTap: () =>
                    SPGNavigator(context).push((_, __, ___) => UnityLauncher(gameId: index + 1)),
                child: createImage(arrayRoute[index]),
              );
            },
          ).toList(),
        ),
        NoBackgroundButton(
          onPressed: () =>
              SPGNavigator(context).push((_, __, ___) => const UnityLauncher(gameId: 1)),
          child: const TextSPG(text: "Aléatoire"),
        ),
      ],
    );
  }
}
