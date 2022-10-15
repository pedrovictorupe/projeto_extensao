import 'package:flutter/material.dart';

class TableOfContents extends StatefulWidget {
  List<Widget> data = [];

  final bool drawerHasBeenClosed;

  TableOfContents(
      {super.key,
      required title,
      required Map<String, String> content,
      required this.drawerHasBeenClosed}) {
    data.add(DrawerHeader(
      decoration: const BoxDecoration(color: Colors.blue),
      child: Text(
        title,
        style: const TextStyle(
            fontWeight: FontWeight.bold, fontSize: 60.0, color: Colors.white),
      ),
    ));
    content.forEach((key, value) {
      data.add(_TableItem(title: key, route: value));
    });
  }

  @override
  State<StatefulWidget> createState() {
    return _TableOfContentsState();
  }
}

class _TableOfContentsState extends State<TableOfContents> {
  List<List<Widget>> viewHistory = [];

  @override
  void initState() {
    super.initState();
    viewHistory.add(widget.data);
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: widget.drawerHasBeenClosed
                ? resetHistory()
                : viewHistory.last));
  }

  // Precisa de setState?
  List<Widget> resetHistory() {
    viewHistory = [widget.data];
    return viewHistory[0];
  }
}

class _TableItem extends StatelessWidget {
  final String title;
  final String route;

  const _TableItem({Key? key, required this.title, required this.route})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
      ),
      onTap: () => Navigator.pushNamed(context, route),
    );
  }
}
