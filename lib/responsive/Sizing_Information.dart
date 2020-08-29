import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/enum/deviceScreenType.dart';

class SizingInforamation{
  final DeviceScreentype deviceScreenType;
  final Size screenSize;
  final Size localWidgetSize;

  SizingInforamation({
    this.deviceScreenType,
    this.screenSize,
    this.localWidgetSize,
  });

  @override
  String toString() {
    return 'DeviceType:$deviceScreenType ScreenSize:$screenSize LocalWidgetSize:$localWidgetSize';
  }
}