import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/enum/deviceScreenType.dart';

DeviceScreentype getDeviceType(MediaQueryData mediaQuerydata){

  double deviceWidth = mediaQuerydata.size.shortestSide;

  if (deviceWidth > 950) {
    return DeviceScreentype.Desktop;
  }

  if (deviceWidth > 600) {
    return DeviceScreentype.Tablet;
  }

  return DeviceScreentype.Mobile;
}//top label function