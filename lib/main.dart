import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_app_mobile/Styling/app_theme.dart';
import 'package:society_app_mobile/data_model/CounterModel.dart';
import 'package:society_app_mobile/ui/orientation_layout.dart';
import 'package:society_app_mobile/ui/screen_type_layout.dart';
import 'package:society_app_mobile/views/home/home.dart';

void main() => runApp(DevicePreview(
      builder: (context) => MyApp(),
      enabled: !kReleaseMode,
    ));

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Society App',
      locale: DevicePreview.of(context).locale,
      builder: DevicePreview.appBuilder,
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      initialRoute: "/",
      routes: {
        "/": (context) => getHome(),
      },
    );
  }
}

Widget getHome(){
  return ChangeNotifierProvider<CounterNotifierModel>(
        create: (_) => CounterNotifierModel(0),
        child: ScreenTypeLayout(
          mobile: OrientationLayout(
            portrait: MyHomePage(title: 'Society App - Mobile Portrait'),
            landscape: MyHomePage(title: 'Society App - Mobile Landscape'),
          ),
          tablet: OrientationLayout(
            portrait: MyHomePage(title: 'Society App - Tablet Portrait'),
            landscape: MyHomePage(title: 'Society App - Tablet Landscape'),
          ),
          desktop: OrientationLayout(
            portrait: MyHomePage(title: 'Society App - Desktop Portrait'),
            landscape: MyHomePage(title: 'Society App - Desktop Landscape'),
          ),
        ),
      );
}