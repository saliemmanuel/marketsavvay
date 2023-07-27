import 'package:flutter/material.dart';
import 'package:marketsavvay/config/config.dart';
import 'package:marketsavvay/widget/custom_text.dart';

class Profil extends StatefulWidget {
  const Profil({super.key});

  @override
  State<Profil> createState() => _ProfilState();
}

class _ProfilState extends State<Profil> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const CustomText(
          data: "Profil",
          color: Palette.primaryColor,
        ),
      ),
    );
  }
}
