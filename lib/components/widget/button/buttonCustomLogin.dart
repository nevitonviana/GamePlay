import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class ButtonCustomLogin extends StatelessWidget {
  const ButtonCustomLogin({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ThemasColors.redButton,
        borderRadius: BorderRadius.circular(6),
      ),
      width: 275,
      height: 56,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Images.discord,
          ),
          Container(
            height: 56,
            width: 1,
            color: Colors.black38,
          ),
          Expanded(
            flex: 4,
            child: Text(
              "Entrar com Discord",
              style: TextStyles.fontsInter500,
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
