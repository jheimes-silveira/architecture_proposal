import 'package:flut_micro_commons_shared/flut_micro_commons_shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'components/body.dart';
import 'product_controller.dart';

class ProductPage extends StatefulWidget {
  final Product product;

  const ProductPage({required this.product});

  @override
  _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends ModularState<ProductPage, ProductController> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFF5F6F9),
      key: scaffoldKey,
      appBar: _appBar(),
      body: Body(product: widget.product),
    );
  }

  AppBar _appBar() {
    return AppBar(
      actions: [
        Row(
          children: [
            Text(
              "${widget.product.rating}",
              style: const TextStyle(
                fontSize: 14,
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 5),
            Icon(
              Icons.favorite,
              color: Colors.red,
            ),
            const SizedBox(width: 16),
          ],
        ),
      ],
    );
  }
}
