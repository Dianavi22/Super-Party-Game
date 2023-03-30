import 'package:flutter/material.dart';
import 'package:spg/custom_widget/navigator.dart';
import 'package:spg/view/settings.dart';

class BaseWidget extends StatelessWidget {
  final List<Widget> children;
  final ImageProvider background;
  final MainAxisAlignment childrenAlign;

  const BaseWidget({
    super.key,
    required this.children,
    this.background = const AssetImage("assets/images/fond-spg.png"),
    this.childrenAlign = MainAxisAlignment.center
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: null,
        actions: [
          NoBackgroundButton(
            child: const Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () => SPGNavigator(context).push((_, __, ___) => const Settings()),
          )
        ],
      ),
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: background,
            fit: BoxFit.fill,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: childrenAlign,
            children: children,
          ),
        ),
      ),
    );
  }
}
