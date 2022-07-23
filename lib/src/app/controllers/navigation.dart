import 'package:flutter/material.dart';

class NavigationController extends ChangeNotifier {
    String currentRoute = "/";

    void changeRoute(String routeName) {
        currentRoute = routeName;
        notifyListeners();
    }
}
