import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:marketsavvay/provider/app_provider.dart';
import 'package:marketsavvay/screen/home/home.dart';
import 'package:marketsavvay/screen/message/message.dart';
import 'package:marketsavvay/screen/profil/profil.dart';
import 'package:provider/provider.dart';
import '../config/palette.dart';
import 'tendance/tendance.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final item = [
    const Home(),
    const Tendance(),
    const Message(),
    const Profil(),
  ];
  @override
  Widget build(BuildContext context) {
    return Consumer<AppProvider>(builder: (_, c, value) {
      return Scaffold(
        backgroundColor: Palette.tryColor,
        body: item[c.topIndex],
        bottomNavigationBar: Container(
          padding: const EdgeInsets.all(8.0),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.vertical(top: Radius.circular(18.0)),
              color: Palette.primaryColor),
          child: GNav(
            tabBackgroundColor: Palette.primaryColor.withOpacity(0.2),
            activeColor: Colors.white,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            gap: 10.0,
            tabs: const [
              GButton(
                  icon: EvaIcons.home,
                  text: 'Home',
                  padding: EdgeInsets.all(10)),
              GButton(
                  icon: EvaIcons.activity,
                  text: 'Tendances',
                  padding: EdgeInsets.all(10)),
              GButton(
                  icon: EvaIcons.messageCircleOutline,
                  text: 'Message',
                  padding: EdgeInsets.all(10)),
              GButton(
                  icon: EvaIcons.person,
                  text: 'Profil',
                  padding: EdgeInsets.all(10)),
            ],
            onTabChange: (val) => c.changeIndex(value: val),
          ),
        ),
      );
    });
  }
}
