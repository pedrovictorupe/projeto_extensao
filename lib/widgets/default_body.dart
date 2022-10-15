import 'package:flutter/material.dart';

class DefaultBody extends StatelessWidget {
  final Widget child;

  const DefaultBody({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return ListView(children: [
      Padding(
          padding: const EdgeInsets.only(top: 80.0, right: 80.0, left: 80.0),
          child: child)
    ]);
  }
}
