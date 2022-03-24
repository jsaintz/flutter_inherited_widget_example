import 'package:flutter/material.dart';
import 'package:flutter_inherited_widget_example/model/user_model.dart';
import 'package:flutter_inherited_widget_example/pages/home/home_page.dart';
import 'package:flutter_inherited_widget_example/pages/splash/splash_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return UserModel(
      name: 'Jonatas Santos',
      imgAvatar: 'https://i.redd.it/59msr0yi6ag41.jpg',
      bithDate: '16/05/1992',
      key: null,
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        routes: {
          '/': (_) => const SplashPage(),
          '/home': (_) => const HomePage(),
        },
      ),
    );
  }
}
