import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/UI/Sizing_Information.dart';
import 'package:flutter_app_responsive_ui/utails/UI_utils.dart';

class BaseWidget extends StatelessWidget {
  final Widget Function(BuildContext context, SizingInforamation sizingInforamation) builder;
  const BaseWidget({Key key, this.builder}): super(key: key);
  @override
  Widget build(BuildContext context) {
    var mediaquery = MediaQuery.of(context);

    return LayoutBuilder(builder: (context, boxConstraints){
      var sizingInformation =SizingInforamation(

        orientation: mediaquery.orientation,
        deviceScreentype: getDeviceType(mediaquery),
        screenSize: mediaquery.size,
        localwidgetSize: Size(boxConstraints.maxWidth, boxConstraints.maxHeight)
      );
      return builder(context, sizingInformation);
    });
  }


}
