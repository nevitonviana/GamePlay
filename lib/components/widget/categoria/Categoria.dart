import 'package:flutter/material.dart';

import '/components/themas/themas.dart';

class Categoria extends StatelessWidget {
  const Categoria({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      child: GridView(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 1,
        ),
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            height: 120,
            width: 104,
            child: Card(
              color: ThemasColors.primaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 48,
                    width: 48,
                    child: Images.logo,
                  ),
                  Text(
                    "Ranqueado",
                    style: TextStyles.fontsRajdhani15,
                  ),
                ],
              ),
            ),
          ),
          Container(
            height: 120,
            width: 104,
            padding: EdgeInsets.only(left: 5),
            child: Card(
              color: ThemasColors.primaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 104,
            padding: EdgeInsets.only(left: 5),
            child: Card(
              color: ThemasColors.primaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
          Container(
            height: 120,
            width: 104,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(5)),
            padding: EdgeInsets.only(left: 5),
            child: Card(
              color: ThemasColors.primaryColor,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(6),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
