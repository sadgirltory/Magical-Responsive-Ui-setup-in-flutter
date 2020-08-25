import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/enum/deviceScreenType.dart';

DeviceScreentype getDeviceType(MediaQueryData mediaQuerydata){
     var orientation = mediaQuerydata.orientation;
      //fixed device width (changes with orientation)
     double devicewidth  = 0;

     if(orientation == Orientation.landscape){
            devicewidth = mediaQuerydata.size.height;
     }else{
       devicewidth= mediaQuerydata.size.width;
     }

     if(devicewidth>950){
       return DeviceScreentype.Desktop;
     }
     if(devicewidth >600){
       return DeviceScreentype.Tablet;
     }
     return DeviceScreentype.Mobile;
}//top label function