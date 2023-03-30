import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class Contact extends StatelessWidget {
  const Contact({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      children: [
        const TextSPG(text: '.'),
        const TextSPG(
          text: 'Nous contacter',
          fontSize: TextSPG.sizeSubTitle,
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xfff2f2f2),
              contentPadding: EdgeInsets.all(10.0),
              labelText: 'Adresse mail',
              border: OutlineInputBorder(),
            ),
            style: TextStyle(fontSize: 14),
            autofocus: false,
            maxLines: 1,
          ),
        ),
        const Padding(
          padding: EdgeInsets.all(20.0),
          child: TextField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
              filled: true,
              fillColor: Color(0xfff2f2f2),
              contentPadding: EdgeInsets.all(30.0),
              labelText: 'Message',
              border: OutlineInputBorder(),
            ),
            style: TextStyle(fontSize: 14),
            autofocus: false,
            maxLines: 10,
          ),
        ),
        ElevatedButton(
          onPressed: () {
            print("Envoi du mail");
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.transparent,
            shadowColor: Colors.transparent.withOpacity(0),
          ),
          child: const TextSPG(text: 'Envoyer'),
        ),
      ],
    );
  }
}
