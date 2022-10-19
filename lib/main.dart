
import 'package:amazone_clone/constants/global_variables.dart';
import 'package:amazone_clone/features/auth/router.dart';
import 'package:amazone_clone/features/auth/screens/auth_screen.dart';
import 'package:amazone_clone/providers/user_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider ( providers: [
    ChangeNotifierProvider(create: (context) => UserProvider(),)
  ], child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: GlobalVariable.backgroundColor,
        colorScheme:
            const ColorScheme.light(primary: GlobalVariable.secondaryColor),
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
      ),
      onGenerateRoute: ((settings) => generateRoute(settings)),
      home: const AuthScreen(),
    );
  }
}
