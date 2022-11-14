import 'package:flutter/material.dart';
import 'package:shoping/constants.dart';

class CartCounter extends StatefulWidget {
  const CartCounter({super.key});

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1; 
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlinedButton(
          icon: Icons.remove,
          press: () {
            if(numOfItems >1){
                setState(() {
                  numOfItems--;
            });
            }
          },
        ), 
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin / 2),
          child: Text(
            numOfItems.toString().padLeft(2, "0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
       buildOutlinedButton(
          icon: Icons.add,
          press: () {
            setState(() {
              numOfItems++; 
            });
          }),

      ],
    );
  }

  SizedBox buildOutlinedButton({IconData? icon, Function()? press}) {
    return SizedBox(
        width: 40,
        height: 32,
        child: OutlinedButton(
       style: OutlinedButton.styleFrom(
          padding: EdgeInsets.zero, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(13),
          )
          ),
          onPressed: press,
          child: Icon(icon),            
          ),
      );
  }
}