import 'package:flutter/material.dart';
import 'package:plano/app.dart';
import 'package:plano/system/stores/curtain.dart';
import 'package:plano/system/stores/scene.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => CurtainStore()),
      ChangeNotifierProvider(create: (context) => SceneStore()),
    ],
    child: PlanoApp(),
  ));
}
