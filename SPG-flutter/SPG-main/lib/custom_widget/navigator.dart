import 'package:flutter/material.dart';

class NoBackgroundButton extends StatelessWidget {
  final void Function()? onPressed;
  final Widget child;

  const NoBackgroundButton({
    super.key,
    required this.onPressed,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent.withOpacity(0),
      ),
      child: child,
    );
  }
}

class SPGNavigator {
  final BuildContext context;

  const SPGNavigator(this.context);

  void push(Widget Function(BuildContext, Animation<double>, Animation<double>) func) {
    Navigator.push(context, PageRouteBuilder(pageBuilder: func));
  }
}
