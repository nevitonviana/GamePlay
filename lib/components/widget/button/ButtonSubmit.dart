import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class ButtonSubmit extends StatelessWidget {
  final String text;
  final double? width;

  const ButtonSubmit({
    Key? key,
    required this.text,
    this.width = 328,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemasColors.redButton,
        borderRadius: BorderRadius.circular(6),
      ),
      height: 58,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(ThemasColors.redButton),
        ),
        onPressed: null,
        child: Text(
          "Agendar",
          style: TextStyles.fontsInter500,
        ),
      ),
    );
  }
}
