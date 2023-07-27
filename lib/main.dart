import 'package:flutter/material.dart';
import 'package:marketsavvay/config/theme.dart';
import 'package:marketsavvay/provider/app_provider.dart';
import 'package:marketsavvay/screen/home_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AppProvider()),
    ],
    child: MaterialApp(
      home: const HomeScreen(),
      theme: ThemeApp.lightTheme(),
      debugShowCheckedModeBanner: false,
    ),
  ));
}
