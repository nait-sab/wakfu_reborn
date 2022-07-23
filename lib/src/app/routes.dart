import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakfu_reborn/src/app/controllers/navigation.dart';
import 'package:wakfu_reborn/src/app/views/accueil.dart';
import 'package:wakfu_reborn/src/app/views/boutique.dart';
import 'package:wakfu_reborn/src/app/views/decks.dart';
import 'package:wakfu_reborn/src/app/views/paquets.dart';
import 'package:wakfu_reborn/src/app/views/profil.dart';

List<Page> applicationRoutes(context) {
  NavigationController navigation = Provider.of<NavigationController>(context);
  List<Page> list = [];

  // Défault Route
  list.add(MaterialPage(child: Accueil()));

  switch (navigation.currentRoute) {
    case "/accueil":
      list.add(MaterialPage(child: Accueil()));
      break;
    case "/profil":
      list.add(MaterialPage(child: Profil()));
      break;
    case "/decks":
      list.add(MaterialPage(child: Decks()));
      break;
    case "/paquets":
      list.add(MaterialPage(child: Paquets()));
      break;
    case "/boutique":
      list.add(MaterialPage(child: Boutique()));
      break;
  }

  return list;
}
