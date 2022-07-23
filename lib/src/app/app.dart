import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakfu_reborn/src/app/controllers/navigation.dart';
import 'package:wakfu_reborn/src/app/routes.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Navigator(
        pages: applicationRoutes(context),
        onPopPage: (route, resultat) {
          bool popStatus = route.didPop(resultat);
          if (popStatus) {
            Provider.of<NavigationController>(context, listen: false).changeRoute("/");
          }
          return popStatus;
        },
      ),
    );
  }
}
