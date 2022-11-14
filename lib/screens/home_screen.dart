import 'package:flutter/material.dart';
import 'package:shoping/constants.dart';
import 'package:shoping/models/Product.dart';
import 'home/Components/body.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() { 
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
          icon: SvgPicture.asset("assets/icons/back.svg"),
                onPressed: () {},
          ),
          actions: [
            IconButton(
              onPressed:() {} , 
          icon: SvgPicture.asset("assets/icons/search.svg",
          color: kTextColor),
         // by defult the search icon color is white
          ),
            IconButton(
              onPressed:() {} , 
          icon: SvgPicture.asset("assets/icons/cart.svg",
          color: kTextColor,)
           // by defult the search icon color is white
          ),
          SizedBox(width: kDefaultPaddin / 2)
          ],
          
    );
  }
}