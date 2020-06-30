import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:tennist_flutter/src/helper/AppConfig.dart';
import 'package:tennist_flutter/pages/default/DefaultScreen.dart';

class MyApp extends StatelessWidget {
  final appConfiguration;

  MyApp(this.appConfiguration);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AppConfig>.value(
          value: appConfiguration,
        ),
      ],
      child: MaterialApp(
        title: 'Tennist',
        theme: ThemeData(
          primarySwatch: Colors.blue,
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        initialRoute: DefaultScreen.routeName,
        routes: {
          DefaultScreen.routeName: (context) => DefaultScreen(),
        },
      ),
    );
  }
}