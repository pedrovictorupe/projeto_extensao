import 'package:flutter/material.dart';

class DefaultBottomBar extends StatelessWidget {
  final String? nextRoute;
  final String? previousRoute;

  const DefaultBottomBar({super.key, this.nextRoute, this.previousRoute});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const [
        BottomNavigationBarItem(
            label: "Anterior", icon: Icon(Icons.arrow_back)),
        BottomNavigationBarItem(
            label: "Próximo", icon: Icon(Icons.arrow_forward))
      ],
      currentIndex: 1,
      onTap: (index) => {
        if (index == 0)
          {Navigator.pushNamed(context, previousRoute ?? "/introducao")}
        else
          {
            {Navigator.pushNamed(context, nextRoute ?? "/introducao")}
          }
      },
    );
  }
}
