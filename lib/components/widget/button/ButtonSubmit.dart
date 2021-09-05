import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class ButtonSubmit extends StatelessWidget {
  final String text;
  final double? width;
  Color? colors = ThemasColors.redButton;

  ButtonSubmit({
    Key? key,
    required this.text,
    this.width = 328,
    this.colors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemasColors.redButton,
        borderRadius: BorderRadius.circular(6),
        border: Border.all(
          color: colors != null
              ? ThemasColors.primaryColor
              : ThemasColors.redButton,
          width: 3,
        ),
      ),
      height: 58,
      width: width,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(colors),
        ),
        onPressed: null,
        child: Text(
          text,
          style: TextStyles.fontsInter500,
        ),
      ),
    );
  }
}
