import 'package:flutter/material.dart';

import '/components/themas/colors/colors.dart';
import '/components/themas/fonts/fonts.dart';
import '/components/widget/widget.dart';

class Agendar extends StatefulWidget {
  const Agendar({Key? key}) : super(key: key);

  @override
  _AgendarState createState() => _AgendarState();
}

class _AgendarState extends State<Agendar> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Agendar De Partida"),
        centerTitle: true,
      ),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.only(left: 20, top: 30, right: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 8, bottom: 15),
                    child: Text(
                      "Categoria",
                      style: TextStyles.fontsRajdhaniBold18,
                    ),
                  ),
                  Categoria(),
                  Container(
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
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 10),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Dia e Mês",
                            style: TextStyles.fontsRajdhaniBold18,
                          ),
                        ),
                        SizedBox(
                          width: 23,
                        ),
                        Expanded(
                          child: Text(
                            "Horário",
                            style: TextStyles.fontsRajdhaniBold18,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: TextFormFieldCustom(labelText: "dd/mm"),
                      ),
                      SizedBox(
                        width: 20,
                      ),
                      Expanded(
                        child: TextFormFieldCustom(labelText: "hh:mm"),
                      ),
                    ],
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 25, bottom: 15),
                    child: Row(
                      children: [
                        Expanded(
                          child: Text(
                            "Descrição",
                            style: TextStyles.fontsRajdhaniBold18,
                          ),
                        ),
                        Expanded(
                          child: Text(
                            "Max 100 caracteres",
                            style: TextStyles.fontsInter13,
                            textAlign: TextAlign.right,
                          ),
                        ),
                      ],
                    ),
                  ),
                  TextFormFieldCustom(
                    maxLines: 4,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 35),
                    child: ButtonSubmit(text: "Agendar", width: constraints.maxHeight * 0.7,),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
