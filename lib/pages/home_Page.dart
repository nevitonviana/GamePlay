import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

import '/components/themas/themas.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (context, snapshot) {
          return Padding(
            padding: const EdgeInsets.only(top: 30),
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 20),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ThemasColors.redButton,
                          image: DecorationImage(
                            image: NetworkImage(
                              "https://img1.gratispng.com/20180319/owq/kisspng-computer-icons-user-profile-clip-art-icon-profile-size-5ab030157502a2.7195773715214960854793.jpg",
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 4,
                      child: ListTile(
                        title: Text.rich(
                          TextSpan(
                            text: "Olá, ",
                            style: TextStyles.fontsRajdhaniW300,
                            children: [
                              TextSpan(
                                text: "Neviton",
                                style: TextStyles.fontsRajdhaniBold24,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        subtitle: Text(
                          "Hoje é dia de vitória",
                          style: TextStyles.fontsInter13,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: Container(
                        width: 48,
                        height: 48,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: ThemasColors.redButton,
                        ),
                        child: Icon(
                          Icons.add,
                          color: ThemasColors.whiteText,
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.only(top: 20, left: 10),
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
                        padding: EdgeInsets.only(left: 5),
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
                              Text("Ranqueado",style: TextStyles.fontsRajdhani15,),
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
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
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
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 35, left: 10, right: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Partidas agendadas",
                        style: TextStyles.fontsRajdhaniBold18,
                      ),
                      Text.rich(
                        TextSpan(
                            text: "Total: ",
                            style: TextStyles.fontsInter13,
                            children: [
                              TextSpan(
                                text: "6",
                                style: TextStyles.fontsInter13,
                              ),
                            ]),
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        top: 10, bottom: 10, left: 10, right: 10),
                    child: ListView.builder(
                      itemBuilder: (BuildContext context, int index) {
                        return Container(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    height: 64,
                                    width: 68,
                                    color: Colors.orange,
                                  ),
                                  Expanded(
                                    flex: 4,
                                    child: Container(
                                      padding: EdgeInsets.only(
                                        left: 20,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.stretch,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text(
                                            "Lendários",
                                            style:
                                                TextStyles.fontsRajdhaniBold18,
                                          ),
                                          Text(
                                            "League of Legends",
                                            style: TextStyles.fontsInter13,
                                          ),
                                          Row(
                                            children: [
                                              Icon(
                                                Icons.calendar_today_outlined,
                                                color: ThemasColors.redButton,
                                                size: 15,
                                              ),
                                              SizedBox(
                                                width: 10,
                                              ),
                                              Text(
                                                "Sex 18/06 ás 21:00h",
                                                style: TextStyles.fontsInter13,
                                              )
                                            ],
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                  Container(
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "Ranqueada",
                                          style: TextStyles.fontsInter13,
                                        ),
                                        SizedBox(
                                          height: 10,
                                        ),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Icon(
                                              Icons.person,
                                              color: ThemasColors.redButton,
                                            ),
                                            Padding(
                                              padding: const EdgeInsets.only(
                                                  left: 15),
                                              child: Text(
                                                "3",
                                                style: TextStyles.fontsInter13,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                              Divider(
                                indent: 80,
                                endIndent: 20,
                                color: ThemasColors.secondaryColor,
                                thickness: 1,
                              )
                            ],
                          ),
                        );
                      },
                    ),
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
