import 'package:flutter/material.dart';
import 'package:projeto_extensao/main.dart';
import 'package:projeto_extensao/widgets/default_bottom_bar.dart';

import 'heading1.dart';
import 'padded_image.dart';
import 'table_of_contents.dart';
import 'textblock.dart';

class LessonPage extends StatefulWidget {
  final List<Widget> data;

  const LessonPage(this.data, {super.key});

  @override
  State<LessonPage> createState() => _LessonPageState();
}

class _LessonPageState extends State<LessonPage> {
  bool _drawerHasBeenClosed = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Introdução: o que é uma ferida?")),
        drawer: TableOfContents(
          title: "Sumário",
          content: tableContents,
          drawerHasBeenClosed: _drawerHasBeenClosed,
        ),
        body: ListView(children: [
          Padding(
            padding: const EdgeInsets.only(top: 80.0, right: 80.0, left: 80.0),
            child: Column(
              children: widget.data,
            ),
          )
        ]),
        bottomNavigationBar: const DefaultBottomBar(
          nextRoute: "/pos-teste-introducao",
        ),
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
