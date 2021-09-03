import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '/components/themas/themas.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? labelText;
  final int? maxLines;

  const TextFormFieldCustom({Key? key, this.labelText, this.maxLines})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 10,),
      decoration: BoxDecoration(
        color: ThemasColors.primaryColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextFormField(
        style: TextStyles.fontsInter500,
        maxLines: maxLines,
        inputFormatters: [
          LengthLimitingTextInputFormatter(100),
        ],
        decoration: InputDecoration(
          labelStyle: TextStyles.fontsInter13,
          labelText: labelText,
        ),
      ),
    );
  }
}
