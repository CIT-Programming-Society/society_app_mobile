import 'package:flutter/widgets.dart';
import 'package:society_app_mobile/enums/device_screen_type.dart';

DeviceScreenType getDeviceType(MediaQueryData media) {
  Orientation orientation = media.orientation;
  double deviceWidth = media.size.shortestSide;

  if(deviceWidth > 950)
    return DeviceScreenType.Desktop;

  else if(deviceWidth > 600)
    return DeviceScreenType.Tablet;
  
  return DeviceScreenType.Mobile;
}
