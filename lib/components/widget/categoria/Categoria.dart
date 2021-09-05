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
                    child: Images.ranqueado,
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
                    child: Images.iX1,
                  ),
                  Text(
                    "Duelo 1X1",
                    style: TextStyles.fontsRajdhani15,
                  ),
                ],
              ),
            ),
          ),
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
                    child: Images.diversao,
                  ),
                  Text(
                    "Diversão",
                    style: TextStyles.fontsRajdhani15,
                  ),
                ],
              ),
            ),
          ),
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
                    child: Images.rpg,
                  ),
                  Text(
                    "RPJ",
                    style: TextStyles.fontsRajdhani15,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
