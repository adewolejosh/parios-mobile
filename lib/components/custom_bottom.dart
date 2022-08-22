
import 'package:flutter/material.dart';

import 'package:auto_route/auto_route.dart';
import 'package:parios/constants/colors.dart';
import 'package:parios/routes/auto_route.gr.dart';


class CustomBottom extends StatelessWidget {
  final int navCurrentScreen;

  const CustomBottom({Key? key, required this.navCurrentScreen}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                navCurrentScreen == 0 ?
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/bottom_activeHome.png')),
                    CircleAvatar(
                      radius: 2.0,
                      backgroundColor: bottomActiveColor,
                    )
                  ],
                ) :
                IconButton(
                  onPressed: () {
                    AutoRouter.of(context).push(NewTripScreen());
                  },
                  icon: Image.asset('assets/images/bottom_inactiveHome.png'))
              ],
            )
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                navCurrentScreen == 1 ?
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/bottom_activeCollection.png')),
                    CircleAvatar(
                      radius: 2.0,
                      backgroundColor: bottomActiveColor,
                    )
                  ],
                ) :
                IconButton(
                  onPressed: () {
                    AutoRouter.of(context).push(SavedTripScreen());
                  },
                  icon: Image.asset('assets/images/bottom_inactiveCollection.png'))
              ],
            )
        ),
        BottomNavigationBarItem(
            label: '',
            icon: Column(
              children: [
                navCurrentScreen == 2 ?
                Column(
                  children: [
                    IconButton(
                        onPressed: () {},
                        icon: Image.asset('assets/images/bottom_activeNotifi.png')),
                    CircleAvatar(
                      radius: 2.0,
                      backgroundColor: bottomActiveColor,
                    )
                  ],
                ) :
                IconButton(
                  onPressed: () {
                    AutoRouter.of(context).push(NotificationScreen());
                  },
                  icon: Image.asset('assets/images/bottom_inactiveNotifi.png'))
              ],
            )
        ),
      ],
    );
  }
}