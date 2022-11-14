import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shoping/constants.dart';
import '../../models/Product.dart';
import '../details/componenets/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product product;
  const DetailsScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildApp(context),
      body: Body(product: product),
    );
  }

  AppBar buildApp(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        icon: SvgPicture.asset('assets/icons/back.svg', color: Colors.white),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: SvgPicture.asset("assets/icons/cart.svg")),
        SizedBox(
          width: kDefaultPaddin / 2,
        )
      ],
    );
  }
}
