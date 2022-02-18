import 'package:flutter/material.dart';

class BigText extends StatelessWidget {
  final Color color;      //! Make the color dynamic
  final String text;
  final double size;
  final TextOverflow overFlow;
  const BigText({Key? key, 
    this.color = const Color(0xFF333333),   //! Has to be const, can't use Colors or AppColors
    required this.text,
    this.size = 20,
    this.overFlow = TextOverflow.ellipsis     //! Text overflow to ...
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        fontWeight: FontWeight.w400
      ),
    );
  }
}