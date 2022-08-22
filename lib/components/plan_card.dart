
import 'package:flutter/material.dart';

import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';


class PlanCard extends StatefulWidget {
  final image;
  final location;
  final body1;
  final body2;
  final body3;
  final body4;
  final status;
  final fave;
  const PlanCard({Key? key, this.image, this.location, this.body1, this.body2, this.body3, this.body4, this.status, this.fave}) : super(key: key);

  @override
  State<PlanCard> createState() => _PlanCardState();
}

class _PlanCardState extends State<PlanCard> {

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 380.0,
        height: 150.0,
        child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: boxPrimaryColor,
            ),
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(widget.image),

                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        title: widget.location,
                        color: Colors.white, size: 16.0,),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2.0,
                            backgroundColor: Colors.white,
                          ),
                          CustomText(title: widget.body1, size: 10.0, color: Colors.white,)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2.0,
                            backgroundColor: Colors.white,
                          ),
                          CustomText(title: widget.body2, size: 10.0, color: Colors.white,)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2.0,
                            backgroundColor: Colors.white,
                          ),
                          CustomText(title: widget.body3, size: 10.0, color: Colors.white,)
                        ],
                      ),
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 2.0,
                            backgroundColor: Colors.white,
                          ),
                          CustomText(title: widget.body4, size: 10.0, color: Colors.white,)
                        ],
                      ),
                    ],
                  ),

                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Image.asset(widget.fave),
                      CustomText(title: widget.status, color: Colors.white, size: 10.0,)
                    ],
                  )
                ],
              ),
            )
        )
    );
  }
}
