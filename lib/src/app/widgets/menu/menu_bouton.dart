import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakfu_reborn/src/app/controllers/navigation.dart';

class MenuBouton extends StatefulWidget {
  /// Text of the button
  final String texte;

  /// Route if the button is tapped
  final String route;

  /// Set true if it's the current page (false by default)
  final bool isActive;

  MenuBouton({
    required this.texte,
    required this.route,
    this.isActive = false,
  });

  @override
  _MenuBoutonState createState() => _MenuBoutonState();
}

class _MenuBoutonState extends State<MenuBouton> {
  late Color backgroundColor;

  @override
  void initState() {
    super.initState();
    backgroundColor = widget.isActive ? Colors.blue.withOpacity(0.8) : Colors.transparent;
  }

  void onHover(isHover) {
    if (!widget.isActive) {
      setState(() {
        backgroundColor = isHover ? Colors.blue.withOpacity(0.4) : Colors.transparent;
      });
    }
  }

  void changeRoute() {
    if (!widget.isActive) {
      Provider.of<NavigationController>(context, listen: false).changeRoute(widget.route);
    }
  }

  @override
  Widget build(BuildContext context) {
    Size screen = MediaQuery.of(context).size;
    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: changeRoute,
        onHover: onHover,
        child: Ink(
          height: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 30),
          decoration: BoxDecoration(
            border: Border(
              left: BorderSide(color: Colors.white),
              right: BorderSide(color: Colors.white),
            ),
            color: backgroundColor,
          ),
          child: Center(
            child: Text(
              widget.texte,
              style: TextStyle(
                color: Colors.white,
                fontSize: screen.width * 0.015,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
