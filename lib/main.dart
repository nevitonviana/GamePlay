import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'components/themas/themas.dart';
import 'pages/pages.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.light);
  runApp(
    MaterialApp(
      title: 'GamePlay',
      theme: ThemeData(
        primaryColor: ThemasColors.primaryColor,
        scaffoldBackgroundColor: ThemasColors.backgroundColor,
        appBarTheme: AppBarTheme(backgroundColor: ThemasColors.primaryColor),
      ),
      home: LoginPage(),
    ),
  );
}
