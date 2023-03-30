import 'package:flutter/material.dart';
import 'package:flutter_verification_code/flutter_verification_code.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class HotPotato extends StatelessWidget {
  const HotPotato({super.key});

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
                    text: '\nPatate\nChaude',
                    fontSize: TextSPG.sizeSubTitle,
                  ),
                ),
              ),
              Ink.image(
                image: const AssetImage(
                  "assets/images/patate.png",
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
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextSPG(text: '\nnb joueurs : '),
            VerificationCode(
              keyboardType: TextInputType.number,
              length: 1,
              textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
              onCompleted: (String value) {
                print(value);
              }, onEditing: (bool value) {  },
            ),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const TextSPG(text: '\n temps dispo : '),
            VerificationCode(
              keyboardType: TextInputType.number,
              length: 1,
              textStyle: const TextStyle(fontSize: 20.0, color: Colors.white),
              onCompleted: (String value) {
                print(value);
              },
              onEditing: (bool value) {  },
            ),
            const TextSPG(text: '\n mn'),
          ],
        ),
      ],
    );
  }
}
