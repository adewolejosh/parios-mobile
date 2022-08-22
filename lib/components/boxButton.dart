
import 'package:flutter/material.dart';
import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';


class BoxButton extends StatelessWidget {
  final h;
  final w;
  final image;
  final title;
  final next;
  const BoxButton({Key? key, this.h, this.w, this.image, this.title, this.next}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
            width: w,
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: boxPrimaryColor,
                  ),
                  height: h,
                  width: w,
                  child: Center(
                    child: SizedBox(
                        child: TextButton(
                          onPressed: next,
                          child: Image.asset(image),
                        )
                    ),
                  ),
                ),
                const SizedBox(
                  height: 15.0,
                ),
                CustomText(title: title, color: bodyPrimaryColor, size: 14.0),
              ],
            )
        )
      ],
    );
  }
}
