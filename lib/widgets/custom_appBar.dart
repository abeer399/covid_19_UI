import 'package:covid19/config/palette.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget with PreferredSizeWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return AppBar(
      backgroundColor: Palette.primaryColor,
      elevation: 0.5,
      leading: IconButton(
        icon: Icon(Icons.menu),
        iconSize: 28,
        onPressed: (){},
      ),
      actions: [
        IconButton(
          icon: Icon(Icons.notifications_none),
          iconSize: 28,
          onPressed: (){},
        ),
      ],

    );
  }

  @override
  // TODO: implement preferredSize
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

}