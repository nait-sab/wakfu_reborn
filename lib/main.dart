import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:wakfu_reborn/src/app/app.dart';
import 'package:wakfu_reborn/src/app/controllers/navigation.dart';

void main() {
    runApp(
        MultiProvider(
            providers: [
                ListenableProvider<NavigationController>(create: (_) =>NavigationController()),
            ],
            child: App(),
        ),
    );
}