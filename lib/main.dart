import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_app_mobile/Styling/app_theme.dart';
import 'package:society_app_mobile/components/home.dart';
import 'package:society_app_mobile/data_model/CounterModel.dart';
import 'package:society_app_mobile/test_ui.dart';

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
      home: ChangeNotifierProvider<CounterNotifierModel>(
        create: (_) => CounterNotifierModel(0),
        // child: MyHomePage(title: 'Society App'),
        child: HomeView(),
        ),

    );
  }
}
