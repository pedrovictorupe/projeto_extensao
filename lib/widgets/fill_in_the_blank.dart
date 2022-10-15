import 'package:flutter/material.dart';
import 'package:projeto_extensao/widgets/validatable_field.dart';

class FillInTheBlank extends StatefulWidget {
  List<Widget> data;
  Function onCorrect;

  // ignore: use_key_in_widget_constructors
  FillInTheBlank({required this.onCorrect, required this.data});

  @override
  State<StatefulWidget> createState() {
    return _FillInTheBlankState();
  }
}

class _FillInTheBlankState extends State<FillInTheBlank> {
  @override
  void initState() {
    super.initState();
    for (var element in widget.data) {
      if (element is ValidatableField) {
        element.onCorrect = widget.onCorrect;
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Wrap(children: widget.data);
  }
}
