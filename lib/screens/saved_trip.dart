
import 'package:flutter/material.dart';

import 'package:parios/components/custom_bottom.dart';
import 'package:parios/components/plan_card.dart';
import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';

class SavedTripScreen extends StatefulWidget {
  const SavedTripScreen({Key? key}) : super(key: key);

  @override
  State<SavedTripScreen> createState() => _SavedTripScreenState();
}

class _SavedTripScreenState extends State<SavedTripScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: CustomText(
          title: 'Saved Trip Plans',
          size: 25.0,
          color: bodyPrimaryColor,
          pos: TextAlign.left,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              PlanCard(
                image: 'assets/images/saved_australia.png',
                location: 'Australia',
                body1: 'Royal Air Maroc',
                body2: 'Brunswick Hotel',
                body3: '2 mini tours',
                body4: 'Two items Packed',
                fave: 'assets/images/saved_notlike.png',
                status: '10% completed',
              ),
              SizedBox(
                height: 50.0,
              ),
              PlanCard(
                image: 'assets/images/saved_paris.png',
                location: 'Paris',
                body1: 'Emirate',
                body2: 'Air BnB',
                body3: '2 mini tours',
                body4: '15 items Packed',
                fave: 'assets/images/saved_notlike.png',
                status: '90% completed',
              ),
              SizedBox(
                height: 50.0,
              ),
              PlanCard(
                image: 'assets/images/saved_seychelles.png',
                location: 'Seychelles',
                body1: 'Qatar Airways',
                body2: 'BayView Seychelles',
                body3: 'Sun bathing and scuba...',
                body4: 'All items Packed',
                fave: 'assets/images/saved_like.png',
                status: 'Done',
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: const CustomBottom(navCurrentScreen: 1,),
    );
  }
}
