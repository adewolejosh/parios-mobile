
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:parios/routes/auto_route.gr.dart';


class UserAvatar extends StatelessWidget {
  final double h;
  final double w;
  final String image;
  const UserAvatar({Key? key, required this.h, required this.w, required this.image}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        AutoRouter.of(context).push(UserAccountScreen());
      },
      child: SizedBox(
        height: h,
        width: w,
        child: CircleAvatar(
          child: Image.asset(image),
        ),
      )
    );
  }
}
