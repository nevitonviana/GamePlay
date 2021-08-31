import 'package:flutter/material.dart';

import '/components/themas/themas.dart';
import '/components/widget/button/buttonCustom.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return Scaffold(
          body: Column(
            children: [
              Stack(
                children: [
                  Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: Images.backgroundImage),
                  Padding(
                    padding: const EdgeInsets.only(top: 60),
                    child: Images.fighter,
                  ),
                ],
              ),
              Text(
                "Conecte-se\n e organize suas  \njogatinas",
                style: TextStyles.fontsRajdhaniBold40,
                textAlign: TextAlign.center,
              ),
              Divider(
                height: 15,
                color: Colors.transparent,
              ),
              Text(
                "Crie grupos para jogar seus games \n favoritos com seus amigos",
                style: TextStyles.fontsInter300,
                textAlign: TextAlign.center,
              ),
              Padding(
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.06),
                child: ButtonCustom(),
              ),
            ],
          ),
        );
      },
    );
  }
}
