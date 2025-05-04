import 'package:bee_protect/provider/main_page_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'pages/splas_screen/splash_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await SharedPreferences.getInstance();
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => MainPageProvider()),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bee Hive',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SplashScreen(),
    );
  }
}
