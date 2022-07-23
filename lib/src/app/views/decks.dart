import 'package:flutter/material.dart';
import 'package:wakfu_reborn/src/app/widgets/chargement.dart';
import 'package:wakfu_reborn/src/app/widgets/menu/menu_bouton.dart';
import 'package:wakfu_reborn/src/app/widgets/menu/menu_navigation.dart';

class Decks extends StatefulWidget {
  @override
  _DecksEtat createState() => _DecksEtat();
}

class _DecksEtat extends State<Decks> {
  late bool chargement;

  @override
  void initState() {
    super.initState();
    chargement = false;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/fond.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: chargement
            ? Chargement()
            : Stack(
                children: [
                  MenuNavigation(
                    boutons: [
                      MenuBouton(texte: "Accueil", route: "/accueil"),
                      MenuBouton(texte: "Profil", route: "/profil"),
                      MenuBouton(texte: "Decks", route: "/decks", isActive: true),
                      MenuBouton(texte: "Paquets", route: "/paquets"),
                      MenuBouton(texte: "Boutique", route: "/boutique"),
                    ],
                  ),
                ],
              ),
      ),
    );
  }
}
