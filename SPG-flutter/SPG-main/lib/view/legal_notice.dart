import 'package:flutter/material.dart';
import 'package:spg/custom_widget/page_master.dart';
import 'package:spg/custom_widget/text.dart';

class LegalNotice extends StatelessWidget {
  const LegalNotice({super.key});

  @override
  Widget build(BuildContext context) {
    return const BaseWidget(
      children: [
        TextSPG(
          text: 'Mentions\nlégales',
          fontSize: TextSPG.sizeSubTitle,
        ),
        Expanded(
          child: SingleChildScrollView(
            padding: EdgeInsets.all(15),
            child: TextSPG(
              text:
                  '\nAlors que ses amis hobbits de la Comté s\'apprêtent à fêter son cent onzième anniversaire, Bilbon Sacquet entame le récit de ses aventures dans un livre destiné à son neveu Frodon Sacquet. Il narre comment, dans un passé lointain, les Nains ont établi un royaume dirigé par Thrór à Erebor, la Montagne Solitaire, riche et prospère grâce à l\'or et autres minerais précieux collectés en son sein. Mais cette richesse provoque les convoitises du dragon Smaug qui détruit le royaume, et s\'installe dans la montagne où il garde précieusement le trésor, forçant les nains à l\'exil. Des années plus tard, Thrór et son armée de nains affrontent les Orques lors de la Bataille d’Azanulbizar se déroulant devant la porte est de la Moria, et le roi nain est tué par le chef ennemi, l\'orque pâle Azog Le Profanateur. Le petit-fils de Thrór, Thorin, combat alors les Orques, utilisant comme bouclier de fortune une bûche de chêne, d\'où son surnom, Écu-de-Chêne, et coupe le bras d\'Azog, le laissant pour mort et remportant alors la bataille.',
              color: Colors.amberAccent,
            ),
          ),
        )
      ],
    );
  }
}
