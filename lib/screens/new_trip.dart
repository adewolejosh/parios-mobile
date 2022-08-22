
import 'package:flutter/material.dart';

import 'package:parios/components/boxButton.dart';
import 'package:parios/components/custom_bottom.dart';
import 'package:parios/components/user_avater.dart';
import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';


class NewTripScreen extends StatelessWidget {
  const NewTripScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomText(
              title: 'Hi, Olivia',
              size: 20.0,
              color: bodyPrimaryColor,
              pos: TextAlign.left,),
            CustomText(
              title: 'All you need for your new trip right here.',
              size: 12.0,
              color: bodyPrimaryColor,
              pos: TextAlign.left,)
          ],
        ),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: const [
          UserAvatar(h: 40.0, w: 40.0, image: 'assets/images/parios_splash_user.png'),
        ],
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_itinary.png', title: 'Itinerary',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_flights.png', title: 'Flights',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_pack.png', title: 'Pack Help',),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_leisure.png', title: 'Leisure',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_short.png', title: 'Short Stay',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_map.png', title: 'Map',),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_restaurant.png', title: 'Restaurant',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_drink.png', title: 'Drinks',),
                  BoxButton(h: 80.0, w: 80.0, image: 'assets/images/main_weather.png', title: 'Weather',),
                ],
              ),
              const SizedBox(
                height: 30.0,
              ),
              SizedBox(
                width: 350.0,
                height: 80.0,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: boxPrimaryColor,
                  ),
                  child: TextButton(
                    onPressed: () {},
                    child: Container(
                      margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          const CustomText(
                            title: 'Expense Planner',
                            color: Colors.white,
                            size: 14.0,
                          ),
                          Image.asset('assets/images/main_expense.png')
                        ],
                      )),
                    )

                )
              )
            ],
          ),
        )
      ),
      bottomNavigationBar: const CustomBottom(navCurrentScreen: 0,),
    );
  }
}
