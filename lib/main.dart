import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:society_app_mobile/Styling/AppTheme.dart';
import 'package:society_app_mobile/components/home.dart';
import 'package:society_app_mobile/data_model/CounterModel.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Society App',
      debugShowCheckedModeBanner: false,
      theme: appTheme(),
      home: ChangeNotifierProvider<CounterNotifierModel>(
        create: (_) => CounterNotifierModel(0),
        child: MyHomePage(title: 'Society App'),
        ),
    );
  }
}
