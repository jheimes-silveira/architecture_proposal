import 'package:flut_micro_app_home/app/home/domain/models/enums/menu_state.dart';
import 'package:flutter/material.dart';

import '../../../../constants.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({
    Key? key,
    required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: SafeArea(
          top: false,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              IconButton(
                icon: Icon(Icons.shop),
                color: MenuState.home == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.favorite),
                onPressed: () {},
                color: MenuState.favourite == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              IconButton(
                icon: Icon(Icons.message),
                onPressed: () {},
                color: MenuState.message == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
              ),
              IconButton(
                icon: Icon(Icons.account_circle),
                color: MenuState.profile == selectedMenu
                    ? kPrimaryColor
                    : inActiveIconColor,
                onPressed: () {},
              ),
            ],
          )),
    );
  }
}
