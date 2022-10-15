import 'package:flutter/material.dart';
import 'package:projeto_extensao/main.dart';
import 'package:projeto_extensao/widgets/default_body.dart';
import 'package:projeto_extensao/widgets/table_of_contents.dart';
import 'package:projeto_extensao/widgets/textblock.dart';
import 'package:projeto_extensao/widgets/validatable_field.dart';

import 'congrats_snackbar.dart';
import 'default_bottom_bar.dart';
import 'fill_in_the_blank.dart';

class FillInTheBlankPage extends StatefulWidget {
  final List<Widget> data;
  const FillInTheBlankPage({super.key, required this.data});

  @override
  State<StatefulWidget> createState() {
    return FillInTheBlankPageState();
  }
}

class FillInTheBlankPageState extends State<FillInTheBlankPage> {
  bool _drawerHasBeenClosed = false;
  int correctFields = 0;
  int numberOfFields = 0;

  // List<Widget> data;
  // FillInTheBlankPageState(this.data);

  @override
  void initState() {
    super.initState();
    numberOfFields = widget.data.whereType<ValidatableField>().length;
  }

  void showSnackBar() {
    ScaffoldMessenger.of(context).showSnackBar(CongratsSnackBar());
    setState(() {});
  }

  void onCorrect(int numberOfFields) {
    correctFields++;
    if (correctFields == numberOfFields) {
      showSnackBar();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pós-teste 1")),
        drawer: TableOfContents(
          title: "Sumário",
          content: tableContents,
          drawerHasBeenClosed: _drawerHasBeenClosed,
        ),
        body: DefaultBody(
            child: FillInTheBlank(
                data: widget.data, onCorrect: () => onCorrect(numberOfFields))),
        bottomNavigationBar: correctFields == numberOfFields
            ? const DefaultBottomBar(previousRoute: "/introducao")
            : null,
        onDrawerChanged: ((isOpened) {
          if (isOpened) {
            _drawerHasBeenClosed = false;
          } else {
            _drawerHasBeenClosed = true;
          }
          setState(() {});
        }));
  }
}
