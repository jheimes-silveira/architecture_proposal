import 'package:flut_micro_app_home/app/home/domain/models/Product.dart';
import 'package:flut_micro_app_home/app/home/presentation/ui/pages/home/components/product_card.dart';
import 'package:flutter/material.dart';
import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: SectionTitle(
            title: "Popular Products",
            press: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                (index) {
                  if (demoProducts[index].isPopular) {
                    return ProductCard(product: demoProducts[index]);
                  }

                  return SizedBox.shrink();
                },
              ),
              SizedBox(width: 20),
            ],
          ),
        )
      ],
    );
  }
}
