import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pepper/views/splash_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const Pepper());
}

class Pepper extends StatelessWidget {
  const Pepper({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Pepper',
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.transparent,
          appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent),
        ),
        home: const SplashScreen());
  }
}
