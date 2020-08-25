import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/enum/deviceScreenType.dart';

class SizingInforamation{
  final Orientation orientation;
  final DeviceScreentype deviceScreentype;
  final Size screenSize;
  final Size localwidgetSize;

  SizingInforamation({this.orientation, this.deviceScreentype, this.screenSize,
      this.localwidgetSize});

  @override
  String toString() {
    return 'SizingInforamation{orientation: $orientation, deviceScreentype: $deviceScreentype, screenSize: $screenSize, localwidgetSize: $localwidgetSize}';
  }
}