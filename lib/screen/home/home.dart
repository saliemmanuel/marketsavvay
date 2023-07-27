import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:marketsavvay/config/palette.dart';
import 'package:marketsavvay/screen/home/widget/home_card.dart';

import '../../widget/widget.dart';
import '../tendance/widget/tendance_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.primaryColor,
        title: const CustomText(
          data: "Market Savvy",
          fontWeight: FontWeight.bold,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0, top: 10.0),
            child: IconButton.filled(
                tooltip: "Notifications",
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white)),
                onPressed: () {},
                icon: const Icon(EvaIcons.bellOutline,
                    color: Palette.primaryColor)),
          )
        ],
      ),
      body: ListView(
        children: [
          Container(
            height: 135.0,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Palette.forColor,
            ),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Palette.primaryColor,
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60.0))),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      alignment: Alignment.center,
                      margin: const EdgeInsets.all(15.0),
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(50.0)),
                      child: const ListTile(
                        leading: Icon(Icons.search),
                        title: TextField(
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Search your services'),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            decoration: const BoxDecoration(
              color: Palette.primaryColor,
            ),
            child: Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: Palette.forColor,
                  borderRadius:
                      BorderRadius.only(topRight: Radius.circular(60.0))),
              child: ListView(
                children: const [
                  ListTile(
                    title: CustomText(
                      data: "My Master",
                      color: Palette.primaryColor,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: SizedBox(
                      height: 200.0,
                      child: Row(
                        children: [
                          HomeCard(label: "label", deco: "deco"),
                          HomeCard(label: "label", deco: "deco"),
                          HomeCard(label: "label", deco: "deco"),
                          HomeCard(label: "label", deco: "deco"),
                          HomeCard(label: "label", deco: "deco"),
                          HomeCard(label: "label", deco: "deco"),
                        ],
                      ),
                    ),
                  ),
                  TendanceCard(),
                  TendanceCard(),
                  TendanceCard(),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
