import 'package:flutter/material.dart';
import 'package:shoping/constants.dart';
import 'package:shoping/models/Product.dart';
import 'package:shoping/screens/details/componenets/color_and_size.dart';
import 'package:shoping/screens/details/componenets/counter_with_fav_btn.dart';
import 'package:shoping/screens/details/componenets/description.dart';
import 'package:shoping/screens/details/componenets/product_title_with_image.dart';

import 'add_to_cart.dart';

class Body extends StatelessWidget {
  final Product product;

  const Body({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size; 
    
    return SingleChildScrollView(
      child: Column(children: [
        SizedBox(
          height: size.height,
          child: Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.3),
                padding: EdgeInsets.only(top: size.height * 0.12, 
                  left: kDefaultPaddin, 
                  right: kDefaultPaddin,
                ),
               
               // height: 500,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(24),
                    topRight: Radius.circular(24),
                  )
                ),
                child: Column(children: [
                  ColorAndSize(product: product), 
                        SizedBox(height: kDefaultPaddin / 2 ),
                  Description(product: product),
                        SizedBox(height: kDefaultPaddin / 2 ),
                  CounterWithFavBtn(),
                        SizedBox(height: kDefaultPaddin / 2 ),
                  AddToCart(product: product)
                ]),
              ), 
            ProductTitleWithimage(product: product)
            
            ],
          ) ,
        )
      ]),

    );
  }
}

