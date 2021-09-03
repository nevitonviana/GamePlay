import 'package:flutter/material.dart';
import 'package:gameplay/pages/agendar.dart';
import 'package:gameplay/pages/detalhes_do_servidor.dart';

import 'components/themas/themas.dart';

void main() {
  runApp(
    MaterialApp(
      title: 'GamePlay',
      theme: ThemeData(
        primaryColor: ThemasColors.primaryColor,
        scaffoldBackgroundColor: ThemasColors.backgroundColor,
        appBarTheme: AppBarTheme(backgroundColor: ThemasColors.primaryColor),
      ),
      home: DetalhesDoServidor(),
    ),
  );
}
