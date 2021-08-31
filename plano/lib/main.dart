import 'package:flutter/material.dart';
import 'package:plano/app.dart';
import 'package:plano/system/stores/director.dart';
import 'package:plano/system/stores/scene.dart';
import 'package:plano/system/stores/theme.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => DirectorStore()),
      ChangeNotifierProvider(create: (context) => SceneStore()),
      ChangeNotifierProvider(create: (context) => ThemeStore()),
    ],
    child: PlanoApp(),
  ));
}
