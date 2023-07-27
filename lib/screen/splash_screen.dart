import 'dart:async';

import 'package:flutter/material.dart';

import '../widget/widget.dart';
import 'screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    initNextPage();
    super.initState();
  }

  initNextPage() {
    Timer(const Duration(seconds: 3), () {
      RouterWidget.pushNewPage(const HomeScreen(), context);
    });
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Column(children: [Text("Chargement...")]));
  }
}
