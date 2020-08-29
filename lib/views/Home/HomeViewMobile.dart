import 'package:flutter/material.dart';

///Containes widget that will be used for Mobile Layout of Home
///potrait and landscape


class HomeMobilePotrait extends StatelessWidget {
   final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
HomeMobilePotrait({Key key}): super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        children:<Widget> [
          Padding(padding: EdgeInsets.all(16),
          child: IconButton(icon:
          Icon(Icons.menu, size: 30,),
              onPressed: (){
            _scaffoldKey.currentState.openDrawer();
              }),)
        ],
      ),
    );
  }
}
