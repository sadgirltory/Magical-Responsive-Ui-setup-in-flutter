import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/enum/deviceScreenType.dart';
import 'package:flutter_app_responsive_ui/responsive/responsiveBuilder.dart';

class ScreenTypeLayout extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget desktop;
  const ScreenTypeLayout({Key key, this.mobile, this.tablet, this.desktop}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation){
        if(sizingInformation.deviceScreenType== DeviceScreentype.Tablet){
          if(tablet != null){
            return tablet;
          }
        }
        if(sizingInformation.deviceScreenType== DeviceScreentype.Desktop){
          if(desktop != null){
            return desktop;
          }
        }
        return mobile;
      },
    );
  }
}
