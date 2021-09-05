import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '/components/themas/themas.dart';
import '/components/widget/widget.dart';

class DetalhesDoServidor extends StatefulWidget {
  const DetalhesDoServidor({Key? key}) : super(key: key);

  @override
  _DetalhesDoServidorState createState() => _DetalhesDoServidorState();
}

class _DetalhesDoServidorState extends State<DetalhesDoServidor> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "Lendários",
          style: TextStyles.fontsRajdhaniBold18,
        ),
        actions: [
          Icon(
            Icons.share_rounded,
            color: ThemasColors.redButton,
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Images.img,
                    Images.imgOpacity,
                    Container(
                      margin: EdgeInsets.only(top: 130, left: 25),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "League of Legends",
                            style: TextStyles.fontsRajdhaniBold24,
                          ),
                          Divider(
                            height: 10,
                          ),
                          Text(
                            "É hoje que vamos chegar ao challenger sem \nperder uma partida da md10",
                            style: TextStyles.fontsInter13,
                          ),
                        ],
                      ),
                    )
                  ],
                ),
                Container(
                  width: constraints.maxWidth * 0.9,
                  height: constraints.maxHeight * 0.63,
                  margin: EdgeInsets.only(top: 10),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            "Jogadores",
                            style: TextStyles.fontsRajdhaniBold18,
                          ),
                          Spacer(),
                          Text(
                            "Total: ",
                            style: TextStyles.fontsInter13,
                          ),
                          Text(
                            "3",
                            style: TextStyles.fontsInter13,
                          ),
                        ],
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.only(bottom: 25),
                          child: ListView.builder(
                            itemBuilder: (BuildContext context, int index) {
                              return Row(
                                children: [
                                  Container(
                                    height: 48,
                                    width: 48,
                                    color: Colors.orange,
                                  ),
                                  Expanded(
                                    child: ListTile(
                                      title: Text(
                                        "Neviton Viana",
                                        style: TextStyles.fontsRajdhaniBold18,
                                      ),
                                      subtitle: Row(
                                        children: [
                                          Icon(
                                            Icons.brightness_1,
                                            color: Colors.green,
                                            size: 10,
                                          ),
                                          SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "Disponivel",
                                            style: TextStyles.fontsInter13,
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              );
                            },
                          ),
                        ),
                      ),
                      Container(
                        height: 56,
                        margin: EdgeInsets.only(bottom: 20),
                        child: DiscordButton(
                          text: "Entrar no servidor do Discord",
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
