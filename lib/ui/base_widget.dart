
import 'package:flutter/material.dart';
import 'package:society_app_mobile/ui/sizing_information.dart';

class BaseWidget extends StatelessWidget {

  final Widget Function(BuildContext context, SizingInformation sizingInformation) builder;

  const BaseWidget({Key key, this.builder}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizingInformation sizingInformation = SizingInformation();

    return builder(context, sizingInformation);
  }
}