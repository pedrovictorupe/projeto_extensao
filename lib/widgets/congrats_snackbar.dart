import 'package:flutter/material.dart';

class CongratsSnackBar extends SnackBar {
  CongratsSnackBar({super.key})
      : super(
            content: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(
                  Icons.done,
                  color: Colors.white,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 16.0),
                  child: Text("Parabéns!"),
                )
              ],
            ),
            backgroundColor: Colors.green);
}
