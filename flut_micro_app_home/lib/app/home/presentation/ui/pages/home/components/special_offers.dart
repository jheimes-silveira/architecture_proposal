import 'package:flutter/material.dart';
import 'package:localization/localization.dart';

import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: (20)),
          child: SectionTitle(
            title: 'home-specialOffers-title'.i18n(),
            press: () {},
          ),
        ),
        SizedBox(height: (20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: 'assets/images/banner_vinho.png',
                category: 'home-specialOffers-title-item-1'.i18n(),
                numOfBrands: 18,
                press: () {},
              ),
              SpecialOfferCard(
                image: 'assets/images/banner_cerveja.png',
                category: 'home-specialOffers-title-item-2'.i18n(),
                numOfBrands: 24,
                press: () {},
              ),
              SizedBox(width: 20),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key? key,
    required this.category,
    required this.image,
    required this.numOfBrands,
    required this.press,
  }) : super(key: key);

  final String category;
  final String image;
  final int numOfBrands;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: (20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          height: (100),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  package: 'flut_micro_app_home',
                  fit: BoxFit.fill,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: (15.0),
                    vertical: (10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: 'home-specialOffers-brands'
                              .i18n([numOfBrands.toString()]),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
