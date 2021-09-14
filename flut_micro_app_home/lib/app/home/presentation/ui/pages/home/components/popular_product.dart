import 'package:flut_micro_app_home/app/home/presentation/ui/pages/home/components/product_card.dart';
import 'package:flut_micro_app_home/app/home/routers.dart';
import 'package:flut_micro_commons_shared/models/product.dart';
import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import 'section_title.dart';

class PopularProducts extends StatelessWidget {
  final List<Product> products;

  const PopularProducts({
    Key? key,
    required this.products,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('home-teste-a'.i18n()),
        Padding(
          padding: EdgeInsets.only(
            right: 24,
            left: 24,
            top: 24,
          ),
          child: SectionTitle(
            title: 'home-popularProducts-title'.i18n(),
            press: () {},
          ),
        ),
        SizedBox(height: 20),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                products.length,
                (index) {
                  final product = products[index];
                  return ProductCard(
                    product: product,
                    onTap: () {
                      Routers.goToProduct(product);
                    },
                  );
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
