import 'package:flutter/material.dart';
import 'package:wakfu_reborn/src/app/widgets/menu/menu_bouton.dart';

class MenuNavigation extends StatefulWidget {
  final List<MenuBouton> boutons;

  MenuNavigation({
    required this.boutons,
  });

  @override
  _MenuNavigationState createState() => _MenuNavigationState();
}

class _MenuNavigationState extends State<MenuNavigation> {
  @override
  Widget build(BuildContext context) {
    Size ecran = MediaQuery.of(context).size;
    return Container(
      width: ecran.width,
      height: ecran.height * 0.1,
      color: Colors.black.withOpacity(0.2),
      child: Row(children: widget.boutons),
    );
  }
}
