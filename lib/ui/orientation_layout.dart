import 'package:flutter/material.dart';

class OrientationLayout extends StatelessWidget {
  final Widget landscape;
  final Widget portrait;

  const OrientationLayout({Key key, this.landscape, this.portrait})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    MediaQueryData mediaQueryData = MediaQuery.of(context);
    Orientation orientation = mediaQueryData.orientation;

    return (orientation == Orientation.portrait || this.landscape == null)
        ? portrait
        : landscape;
  }
}
