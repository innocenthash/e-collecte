import "package:flutter/material.dart";

class BottomDeNavigation extends StatefulWidget {
  final List<String> namesPages;

  final Function(int valeur) function;

  const BottomDeNavigation(
      {super.key, required this.namesPages, required this.function});

  @override
  State<BottomDeNavigation> createState() => _BottomDeNavigationState();
}

class _BottomDeNavigationState extends State<BottomDeNavigation> {
  int index = 0;
  int nombre = 35;
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      selectedItemColor: index== 1 ?Colors.white : const Color.fromARGB(255, 255, 255, 255),
      unselectedItemColor: Color.fromARGB(213, 34, 34, 34),
      // backgroundColor: const Color.fromRGBO(224, 64, 251, 1),
      items: [
      BottomNavigationBarItem(
          // title: Text('a'),
          label: widget.namesPages[0],
          icon: const Icon(Icons.home),
        )  ,
        BottomNavigationBarItem(
          // title: Text('a'),
          label:  widget.namesPages[1],
          icon: const Icon(Icons.store),
        ) , 
        BottomNavigationBarItem(
            // title: Text('a'),

            icon: const Icon(Icons.group),
            label: widget.namesPages[2]),

            // BottomNavigationBarItem(
            // // title: Text('a'),

            // icon: const Icon(Icons.map),
            // label: widget.namesPages[3]),
      ],
      onTap: (x) {
        setState(() {
          index = x;
          widget.function(x);
        });
      },
    );
  }
}
