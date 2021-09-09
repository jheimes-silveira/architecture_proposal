import 'package:flut_design_system_duck/flut_design_system_duck.dart';
import 'package:flutter/material.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 24,
        right: 24,
        left: 24,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(child: DuckSearchField()),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: DuckIconBtnWithCounter(
              icon: Icons.card_travel,
              press: () {},
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: DuckIconBtnWithCounter(
              icon: Icons.notifications,
              numOfitem: 3,
              press: () {},
            ),
          ),
        ],
      ),
    );
  }
}
