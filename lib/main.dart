import 'package:flutter/material.dart';
import 'package:auto_route/auto_route.dart';

import 'package:parios/components/boxButton.dart';
import 'package:parios/components/user_avater.dart';
import 'package:parios/constants/texts.dart';
import 'package:parios/routes/auto_route.gr.dart';
import 'package:parios/constants/colors.dart';


void main() {
  runApp(MyApp());
}


class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      // title: 'Parios Assessment',
      // theme: ThemeData(
      //   // This is the theme of your application.
      //   //
      //   // Try running your application with "flutter run". You'll see the
      //   // application has a blue toolbar. Then, without quitting the app, try
      //   // changing the primarySwatch below to Colors.green and then invoke
      //   // "hot reload" (press "r" in the console where you ran "flutter run",
      //   // or simply save your changes to "hot reload" in a Flutter IDE).
      //   // Notice that the counter didn't reset back to zero; the application
      //   // is not restarted.
      //   primarySwatch: Colors.blue,
      // ),

      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  void init() {

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Image.asset('assets/images/parios_splash_bg.png')
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const UserAvatar(h: 105.0, w: 105.0, image: 'assets/images/parios_splash_user.png'),
              const SizedBox(
                height: 10.0,
              ),
              CustomText(title: 'Welcome', color: titlePrimaryColor, size: 30.0),
              CustomText(title: 'Your new destination awaits you!', color: bodyPrimaryColor, size: 14.0),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  BoxButton(
                    h: 100.0,
                    w: 100.0,
                    image: 'assets/images/parios_splash_image_1.png',
                    title: 'Create New Trip Plans',
                    next: () {
                      AutoRouter.of(context).push(NewTripScreen());
                    },
                  ),
                  BoxButton(
                    h: 100.0,
                    w: 100.0,
                    image: 'assets/images/parios_splash_image_2.png',
                    title: 'Continue a previous plan',
                    next: () {
                      AutoRouter.of(context).push(SavedTripScreen());
                    },
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
