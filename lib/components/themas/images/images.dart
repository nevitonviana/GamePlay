import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class Images {
  static final fighter = Image.asset(
    "assets/images/fighter.jpeg",
    height: 388,
    width: 327,
  );

  static final logo = Image.asset(
    "assets/images/logo.jpeg",
  );
  static final backgroundImage = Image.asset(
    "assets/images/backgroundImage.jpeg",
    height: 387,
    width: 359.04,
  );
  static final discord = Image.asset(
    "assets/images/discord.gif",
    color: ThemasColors.redButton,
    colorBlendMode: BlendMode.multiply,
    height: 30,
    width: 30,
  );
  static final img = Image.asset(
    "assets/images/img.png",
    height: 234,fit: BoxFit.fitWidth,
  );
  static final imgOpacity = Image.asset(
    "assets/images/imgOpacity.png",
    height: 234,fit: BoxFit.fitWidth,
  );
}
// multiply
