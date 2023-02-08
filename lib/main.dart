import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:shabu_shop/Screens/Splash%20Screen/splash_screen.dart';

Future<void> main() async {
 // WidgetsFlutterBinding.ensureInitialized();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme:GoogleFonts.montserratTextTheme(Theme.of(context).textTheme.apply())
      ),
      home: SplashScreen(),
    );
  }
}


