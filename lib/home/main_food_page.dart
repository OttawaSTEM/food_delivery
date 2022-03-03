
import 'package:flutter/material.dart';
import 'package:food_delivery/home/food_page_body.dart';
import 'package:food_delivery/utils/colors.dart';
import 'package:food_delivery/widgets/big_text.dart';
import 'package:food_delivery/widgets/small_text.dart';

class MainFoodPage extends StatefulWidget {
  const MainFoodPage({Key? key, required this.title}) : super(key: key);
   final String title;

  @override
  State<MainFoodPage> createState() => _MainFoodPageState();
}

class _MainFoodPageState extends State<MainFoodPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(        //! Use Container header bottom backgroundColor changed
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 45, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    BigText(
                      text: 'Canada', 
                      color: AppColors.mainColor
                    ),
                    Row(
                      children: const [
                        SmallText(
                          text: 'Ottawa', 
                          color: Colors.black
                        ),
                        Icon(Icons.arrow_drop_down_sharp)
                      ],
                    )
                  ],
                ),
                Center(             //! Use "Refactor" to wrap
                  child: Container(
                    width: 45,
                    height: 45,
                    child: const Icon(Icons.search, color:Colors.white),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: AppColors.mainColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
          FoodPageBody(
            
          )
        ],
      ),
    );
  }
}
