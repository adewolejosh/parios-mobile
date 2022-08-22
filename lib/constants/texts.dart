
import 'package:flutter/material.dart';

class CustomText extends StatelessWidget {
  final title;
  final color;
  final size;
  final weight;
  final pos;

  const CustomText({Key? key, this.title, this.color, this.size, this.weight, this.pos}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: color,
        fontFamily: 'Poppins',
        fontSize: size,
        fontWeight: weight,
      ),
      textAlign: pos ?? TextAlign.center,
    );
  }
}
