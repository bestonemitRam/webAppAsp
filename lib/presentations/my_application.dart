import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/rout/routes.dart';

class MyApplication extends StatefulWidget {
  const MyApplication({super.key});

  @override
  State<MyApplication> createState() => _MyApplicationState();
}

class _MyApplicationState extends State<MyApplication> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveSizer(
      builder: (BuildContext, Orientation, ScreenType) {
        return MaterialApp.router(
          routerConfig: MyRoutes.router,
          debugShowCheckedModeBanner: false,
          theme: ThemeData(
            scaffoldBackgroundColor: Colors.white,
            canvasColor: const Color.fromRGBO(255, 255, 255, 1),
            fontFamily: 'GoogleSans',
            primarySwatch: Colors.blue,
          ),
          themeMode: ThemeMode.light,
          title: "Asp web",
        );
      },
    );
  }
}
