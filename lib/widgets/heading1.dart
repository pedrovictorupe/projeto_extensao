import 'package:flutter/material.dart';

class Heading1 extends StatelessWidget {
  final String data;

  const Heading1(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 40.0),
    );
  }
}
