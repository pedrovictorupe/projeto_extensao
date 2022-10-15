import 'package:flutter/material.dart';

class ValidatableField extends StatefulWidget {
  final String answer;
  late Function _onCorrect;

  set onCorrect(Function callback) {
    _onCorrect = callback;
  }

  ValidatableField(this.answer, {super.key});

  @override
  State<StatefulWidget> createState() {
    return _ValidatableFieldState();
  }
}

class _ValidatableFieldState extends State<ValidatableField> {
  MaterialColor fieldColor = Colors.blue;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(right: 16.0),
        child: SizedBox(
            width: 100.0,
            child: TextField(
                onSubmitted: (text) => _evaluate(text),
                decoration: InputDecoration(
                    isDense: true,
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: fieldColor)),
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: fieldColor))),
                textAlign: TextAlign.center)));
  }

  _evaluate(String text) {
    if (text == widget.answer) {
      fieldColor = Colors.green;
      widget._onCorrect();
    } else {
      fieldColor = Colors.red;
    }
    setState(() {});
  }
}
