import 'package:flutter/material.dart';

class FoodPageBody extends StatefulWidget {
  FoodPageBody({Key? key}) : super(key: key);

  @override
  _FoodPageBodyState createState() => _FoodPageBodyState();
}

class _FoodPageBodyState extends State<FoodPageBody> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 320,
      child: PageView.builder(
        itemCount: 5,
        itemBuilder: (context, index){
          return _buildPageItems(index);
        }
      ),
    );
  }

  Widget _buildPageItems(int index) {
    return Container(
      height: 220,
      margin: const EdgeInsets.only(left: 5, right: 5),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: const Color(0xFF69C5DF) 
      ),

    );
  }
}

