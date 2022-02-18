import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  final Color color;      //! Make the color dynamic
  final String text;
  final double size;
  final double height;
  // final TextOverflow overFlow;
  const SmallText({Key? key, 
    this.color = const Color(0xFF333333),   //! Has to be const, can't use Colors or AppColors
    required this.text,
    this.size = 12,
    this.height = 1.2,
    // this.overFlow = TextOverflow.ellipsis     //! Text overflow to ...
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      // overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: size,
        height: height
      ),
    );
  }
}