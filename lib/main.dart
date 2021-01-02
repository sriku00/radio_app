import 'package:flutter/material.dart';
import 'package:hooks_riverpod/all.dart';
import 'package:radio_app/Screens/home_screen.dart';
import 'package:radio_app/Theme/app_theme.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Radio Music',
        theme: AppTheme().appTheme(),
        debugShowCheckedModeBanner: false,
        home: HomeScreen());
  }
}
