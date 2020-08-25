

import 'package:flutter/material.dart';
import 'package:flutter_app_responsive_ui/UI/baseWidget.dart';

class HomeView extends StatelessWidget {

  const HomeView({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return BaseWidget(builder: (context, sizingInformation){
            return Scaffold(
              body: Center(child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Container(height: 150,
                  color: Colors.blue,
                  child: BaseWidget(builder: (context,sizingInfo)=>Text(sizingInfo.toString())),),
                  Text(sizingInformation.toString()),
                ],
              ),),
            );
    },);
}}
