import 'package:flut_design_system_duck/constants.dart';
import 'package:flut_design_system_duck/flut_design_system_duck.dart';
import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/material.dart';

class ColorDots extends StatelessWidget {
  const ColorDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  Widget build(BuildContext context) {
    // Now this is fixed and only for demo
    int selectedColor = 3;
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: (20)),
      // child: Row(
      //   children: [
      //     ...List.generate(
      //       product.colors.length,
      //       (index) => ColorDot(
      //         color: product.colors[index],
      //         isSelected: index == selectedColor,
      //       ),
      //     ),
      //     Spacer(),
      //     DuckRoundedIconBtn(
      //       icon: Icons.remove,
      //       press: () {},
      //     ),
      //     SizedBox(width: (20)),
      //     DuckRoundedIconBtn(
      //       icon: Icons.add,
      //       showShadow: true,
      //       press: () {},
      //     ),
      //   ],
      // ),
    );
  }
}

class ColorDot extends StatelessWidget {
  const ColorDot({
    Key? key,
    required this.color,
    this.isSelected = false,
  }) : super(key: key);

  final Color color;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: 2),
      padding: EdgeInsets.all((8)),
      height: (40),
      width: (40),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border:
            Border.all(color: isSelected ? kPrimaryColor : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
