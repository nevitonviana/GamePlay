import 'package:flutter/material.dart';
import 'package:gameplay/pages/agendar.dart';


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
      home: Agendar(),
    ),
  );
}
