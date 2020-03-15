import 'package:flutter/material.dart';
import 'package:society_app_mobile/enums/device_screen_type.dart';
import 'package:society_app_mobile/ui/responsive_builder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;

  const ScreenTypeLayout({Key key, this.mobile, this.desktop, this.tablet})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        if (sizingInformation.deviceScreenType == DeviceScreenType.Tablet &&
            tablet != null) return tablet;

        if (sizingInformation.deviceScreenType == DeviceScreenType.Desktop &&
            desktop != null) return desktop;

        return mobile;
      },
    );
  }
}
