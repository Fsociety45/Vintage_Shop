import 'package:flutter/material.dart';

import 'package:Vintage_Shop/model/screenarguments.dart';

import 'package:Vintage_Shop/splash.dart';

import 'package:Vintage_Shop/screens/login/login.dart';
import 'package:Vintage_Shop/screens/home/home.dart';

const String splash = '/';
const String home = '/home';
const String search = '/search';
const String login = '/login';
const String register = '/register';
const String categories = '/categories';
const String bottomnav = "/nav";

class Routing {
  static Route<dynamic> generateRoute(RouteSettings screen) {
    switch (screen.name) {
      case login:
        return MaterialPageRoute(builder: (_) => LoginScreen());
      // case splash:
      //   return MaterialPageRoute(builder: (_) => SplashScreen());
      case home:
        return MaterialPageRoute(builder: (_) => HomeScreen());

      case bottomnav:
        ScreenArguments args = screen.arguments;
        return MaterialPageRoute(
          builder: (_) => Bottomnavbar(
            front: args.front,
            index: args.index,
            currency: args.currency,
          ),
        );
      default:
        return MaterialPageRoute(builder: (_) => Bottomnavbar());
    }
  }
}
