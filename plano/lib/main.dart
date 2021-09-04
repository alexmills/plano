import 'package:flutter/material.dart';
import 'package:plano/app.dart';
import 'package:plano/stores/director.dart';
import 'package:plano/stores/network.dart';
import 'package:plano/stores/scene.dart';
import 'package:plano/stores/settings.dart';
import 'package:plano/stores/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DirectorStore()),
      ChangeNotifierProvider(create: (context) => SceneStore()),
      ChangeNotifierProvider(create: (context) => ThemeStore()),
      ChangeNotifierProvider(create: (context) => SettingsStore()),
      ChangeNotifierProvider(create: (context) => NetworkStore()),
    ],
    child: PlanoApp(),
  ));
}
