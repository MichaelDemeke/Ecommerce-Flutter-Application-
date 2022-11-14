import 'package:flutter/material.dart';
import 'package:shoping/constants.dart';

// we need a statfull weidget for our catagories

class Categories extends StatefulWidget {
  const Categories({super.key});

  @override
  State<Categories> createState() => _CategoriesState();
}

class _CategoriesState extends State<Categories> {
  @override
  List<String> catagories = ["Hand bag", "Jewellery", "Footwear", "Dresses"];
  // By defult items will be selected 
  int selectedIndex = 0;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: kDefaultPaddin),
      child: SizedBox(
        height: 25,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: catagories.length, 
          itemBuilder: (context, index) => 
        buildCategory(index)),
      ),
    );
  }

  Widget buildCategory(int index) { 
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedIndex = index; 
        });
      }, 
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPaddin),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              catagories[index],
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color:selectedIndex == index ? kTextColor: kTextLightColor, ),
              
              ),
            Container(
              margin: EdgeInsets.only(top: kDefaultPaddin / 4), // top padding 5
              height: 2,
              width: 30,
              color:selectedIndex == index ? Colors.black: Colors.transparent,
            )
          ],
        ),
      ),
    );
  }
}