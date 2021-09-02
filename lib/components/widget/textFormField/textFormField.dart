import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class TextFormFieldCustom extends StatelessWidget {
  final String? labelText;

  const TextFormFieldCustom({Key? key, this.labelText})
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
        decoration: InputDecoration(
          labelStyle: TextStyles.fontsInter13,
          labelText: labelText,
        ),
      ),
    );
  }
}
