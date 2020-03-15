import 'package:flutter/material.dart';
import 'package:society_app_mobile/ui/base_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BaseWidget(
      builder: (context, sizingInformation) {
        return Scaffold(
          body: Center(
            child: Text(sizingInformation.toString()),
          ),
        );
      },
    );
  }
}
