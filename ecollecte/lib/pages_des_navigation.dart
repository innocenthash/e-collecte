import "package:ecollecte/pages/menu.dart";
import "package:flutter/material.dart";

class PagesDesNavigation extends StatefulWidget {
  const PagesDesNavigation({super.key});

  @override
  State<PagesDesNavigation> createState() => _PagesDesNavigationState();
}

class _PagesDesNavigationState extends State<PagesDesNavigation> {
  @override
  Widget build(BuildContext context) {
    return const Menu();
  }
}