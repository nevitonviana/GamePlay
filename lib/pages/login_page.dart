import 'package:flutter/material.dart';
import 'package:gameplay/pages/pages.dart';

import '/components/themas/themas.dart';
import '/components/widget/button/discord_button.dart';

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
              Container(
                height: constraints.maxHeight * 0.6,
                child: Stack(
                  children: [
                    Padding(
                        padding:
                            EdgeInsets.only(top: constraints.maxHeight * 0.03),
                        child: Images.backgroundImage),
                    Padding(
                      padding:
                          EdgeInsets.only(top: constraints.maxHeight * 0.05),
                      child: Images.fighter,
                    ),
                  ],
                ),
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
                padding: EdgeInsets.only(top: constraints.maxHeight * 0.04),
                child: Container(
                  width: 275,
                  child: DiscordButton(
                    onTap: () => Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(
                          builder: (_) => HomePage(),
                        ),
                        (route) => false),
                    text: "Entrar com Discord",
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
