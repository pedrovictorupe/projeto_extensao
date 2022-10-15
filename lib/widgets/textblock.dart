import 'package:flutter/material.dart';

class Textblock extends StatelessWidget {
  const Textblock(
    this.data, {
    Key? key,
  }) : super(key: key);

  final String data;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 16.0),
      child: Text(
        data,
        textAlign: TextAlign.justify,
        style: const TextStyle(
            fontSize: 20.0, color: Color.fromARGB(255, 4, 31, 53)),
      ),
    );
  }
}
