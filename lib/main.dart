import 'package:flutter/material.dart';
import 'pages/pages.dart';

import 'components/themas/themas.dart';

void main() {

  runApp(
    MaterialApp(
      title: 'GamePlay',
      theme: ThemeData(
        primaryColor: ThemasColors.primaryColor,
        scaffoldBackgroundColor: ThemasColors.backgroundColor,
        textTheme: TextTheme(bodyText2: TextStyle(color: Colors.white)),
      ),
      home: LoginPage(),
    ),
  );
}
