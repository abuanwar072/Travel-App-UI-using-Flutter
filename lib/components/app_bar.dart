import 'package:flutter/material.dart';

import '../constants.dart';

AppBar buildAppBar(BuildContext context,
    {bool isTransparent = false, String title}) {
  return AppBar(
    backgroundColor: isTransparent ? Colors.transparent : Colors.white,
    elevation: 0,
    leading: IconButton(
      icon: Icon(
        Icons.menu,
        color: kIconColor,
      ),
      onPressed: () {},
    ),
    title: ! isTransparent
        ? Text(
            isTransparent ? "" : title,
            style: TextStyle(color: kTextColor),
          )
        : null,
    centerTitle: true,
    actions: [
      IconButton(
        icon: ClipOval(child: Image.asset("assets/images/profile.png")),
        onPressed: () {},
      )
    ],
  );
}
