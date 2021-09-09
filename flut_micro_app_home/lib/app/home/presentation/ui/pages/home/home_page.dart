import 'package:flut_micro_app_home/app/home/domain/models/enums/menu_state.dart';
import 'package:flut_micro_app_home/app/home/presentation/ui/components/coustom_bottom_nav_bar.dart';
import 'package:flut_micro_commons_dependencies/flut_micro_commons_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
export 'package:flutter_mobx/flutter_mobx.dart';
import '../../../../../size_config.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';
import 'home_controller.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  final GlobalKey<ScaffoldState> scaffoldKey = new GlobalKey<ScaffoldState>();

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    controller.popularProductsUsecase();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HomeHeader(),
              DiscountBanner(),
              SpecialOffers(),
              Observer(
                builder: (_) {
                  return PopularProducts(
                    products: controller.products,
                  );
                },
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedMenu: MenuState.home,
      ),
    );
  }
}
