import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
// import 'package:meri_didi_app/homescreen.dart';
import 'package:meri_didi_app/screens/sign_in_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp, // Only allow portrait mode
  ]);

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meri Didi',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.yellow),
      ),
      home: SignInScreen(),
    );
  }
}
