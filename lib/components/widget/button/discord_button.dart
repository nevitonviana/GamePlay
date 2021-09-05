import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class DiscordButton extends StatelessWidget {
  final String text;
  final Function()? onTap;
  const DiscordButton({Key? key, required this.text, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          color: ThemasColors.redButton,
          borderRadius: BorderRadius.circular(6),
        ),

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
               text,
                style: TextStyles.fontsInter500,
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
