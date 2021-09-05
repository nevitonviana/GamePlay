import 'package:flutter/material.dart';
import 'package:gameplay/components/themas/themas.dart';

class selecionarServidor extends StatelessWidget {
  final double height;
  const selecionarServidor({
    Key? key, required this.height,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        showModalBottomSheet(
          isScrollControlled: true,
          elevation: 6,
          backgroundColor: Colors.transparent,
          context: context,
          builder: (context) {
            return Container(
              height:height,
              color: ThemasColors.primaryColor,
              child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.only(
                        left: 15, right: 15, top: 20),
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            width: 64,
                            height: 68,
                            child: Images.csgo,
                          ),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          flex: 4,
                          child: Column(
                            crossAxisAlignment:
                            CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Rumo ao topo",
                                style: TextStyles
                                    .fontsRajdhaniBold18,
                              ),
                              Divider(
                                height: 7,
                              ),
                              Text(
                                "Counter Strike: Global Offensive",
                                style: TextStyles.fontsInter13,
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Icon(
                            Icons.arrow_forward_ios_sharp,
                            color: ThemasColors.whiteText,
                            size: 15,
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            );
          },
        );
      },
      child: Container(
        margin: EdgeInsets.only(
          top: 30,
        ),
        height: 68,
        decoration: BoxDecoration(
          border: Border.all(color: ThemasColors.primaryColor),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          children: [
            Expanded(
              child: Container(
                width: 64,
                color: ThemasColors.primaryColor,
              ),
            ),
            Expanded(
              flex: 4,
              child: Container(
                child: Text(
                  "Selecione um Servidor",
                  style: TextStyles.fontsRajdhaniBold18,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Expanded(
              child: Container(
                child: Icon(
                  Icons.arrow_forward_ios_sharp,
                  color: ThemasColors.whiteText,
                  size: 15,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
