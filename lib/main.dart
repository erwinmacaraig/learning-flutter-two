import 'package:flutter/material.dart';
import './screens/screens.dart';
import './models/models.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => TaskData(),
      child: MaterialApp(
        theme: ThemeData.dark().copyWith(
          unselectedWidgetColor: Colors.black,
          primaryColor: const Color(0xFF0A0E21),
          scaffoldBackgroundColor: const Color(0xFF0A0E21),
        ),
        initialRoute: '/',
        routes: {
          '/': (context) {
            return Topics();
          },
          '/bmi_calc': (context) {
            return BMIPage();
          },
          '/dicee': (context) {
            return DicePage();
          },
          '/clima': (context) {
            return LoadingScreen();
          },
          '/todoeey': (context) {
            return TasksScreen();
          }
        },
        // home: Topics(),
      ),
    );
  }
}
