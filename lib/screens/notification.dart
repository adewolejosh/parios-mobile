
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:parios/components/custom_bottom.dart';
import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';
import 'package:parios/routes/auto_route.gr.dart' as g;


var notifiJson = [
  {
    'title': 'Flight',
    'active': true,
    'icon': 'assets/images/main_flights.png',
    'body': "The flight to Morocco is cheaper now. Check Emirates and Air Maroc",
    'buttonTitle': 'Book Now',
  },
  {
    'title': 'Pack Help',
    'active': false,
    'icon': 'assets/images/main_pack.png',
    'body': "Well done! \n You have packed 15 items for you Seychelles Trip, You have 10 more itmems to pack.",
    'buttonTitle': 'Pack Now',
  },
  {
    'title': 'Weather',
    'active': true,
    'icon': 'assets/images/main_weather.png',
    'body': "Have you checked the weather in seychelles for your planned trip?",
    'buttonTitle': 'Book Now',
  },
  {
    'title': 'Short Stay',
    'active': false,
    'icon': 'assets/images/main_short.png',
    'body': "Well done! \n You have packed 15 items for you Seychelles Trip, You have 10 more itmems to pack.",
    'buttonTitle': 'Pack Now',
  },
];


class NotificationCard extends StatefulWidget {
  final index;
  final title;
  final icon;
  final active;
  final body;
  final buttonTitle;
  final parentContext;
  const NotificationCard({Key? key, this.index, this.title, this.icon, this.active, this.body, this.buttonTitle, this.parentContext}) : super(key: key);

  @override
  State<NotificationCard> createState() => _NotificationCardState();
}


class _NotificationCardState extends State<NotificationCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: widget.active ? bottomActiveColor : bottomInactiveColor
        ),
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomText(title: widget.title, color: widget.active ? Colors.white : bodyPrimaryColor, size: 16.0,),
                      SizedBox(width: 10.0,),
                      Image.asset(widget.icon, width: 15.0, height: 15.0,)
                    ],
                  ),
                  GestureDetector(
                    onTap: () {
                      setState(() {
                        notifiJson.removeAt(widget.index);

                        context.pushRoute(g.NotificationScreen());

                        // Navigator.pushReplacement(
                        //     widget.parentContext,
                        //     MaterialPageRoute(
                        //         builder: (BuildContext context) => this.widget));
                      });

                    },
                    child: Icon(Icons.close, color: widget.active ? Colors.white : boxPrimaryColor,),
                  )
                ],
              ),

              SizedBox(height: 10.0,),

              CustomText(
                title: widget.body,
                color: widget.active ? Colors.white : boxPrimaryColor,
                pos: TextAlign.left,
                size: 10.0,
              ),

              SizedBox(height: 10.0,),

              Row(
                children: [
                  TextButton(
                    onPressed: () {},
                    child: CustomText(
                      title: widget.buttonTitle,
                      color: widget.active ? boxPrimaryColor : Colors.white,
                      size: 10.0,
                    ),
                    style: ButtonStyle(
                        backgroundColor: widget.active ?
                        MaterialStateProperty.all<Color>(Colors.white) :
                        MaterialStateProperty.all<Color>(boxPrimaryColor)
                    ),
                  ),
                  SizedBox(
                    width: 30.0,
                  ),

                  TextButton(
                    onPressed: () {},
                    child: CustomText(
                      title: 'Later',
                      color: widget.active ? Colors.white : boxPrimaryColor,
                      size: 10.0,
                    ),
                    style: ButtonStyle(
                      side: MaterialStateProperty.all<BorderSide>(BorderSide(color: widget.active ? Colors.white : boxPrimaryColor)),
                    ),
                  ),
                ],
              )
            ],
          ),
        )
    );
  }
}




class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}


class _NotificationScreenState extends State<NotificationScreen> {


  Widget notificationList() {
    return notifiJson.isNotEmpty ?
    ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      itemCount: notifiJson.length,
      itemBuilder: (context, i) {
        final not = notifiJson[i];
        return Column(
          children: [
            NotificationCard(
              index: i,
              parentContext: context,
              title: not['title'],
              active: not['active'],
              icon: not['icon'],
              body: not['body'],
              buttonTitle: not['buttonTitle'],
            ),
            const SizedBox(
              height: 20.0,
            )
          ],
        );
      },
    ) :
    Container(
        width: double.infinity,
        height: 150.0,
        decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: bottomActiveColor
      ),
      child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 10.0),
          child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                    CustomText(title: 'No New Notification', color: Colors.white, size: 16.0,),
                  ],
                ),
              Icon(Icons.close, color: Colors.white,),
            ],
          )
          ]
        )
      )
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leadingWidth: 0,
        title: CustomText(
          title: 'Notifications',
          size: 25.0,
          color: bodyPrimaryColor,
          pos: TextAlign.left,
        ),
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: notificationList()
      ),
      bottomNavigationBar: const CustomBottom(navCurrentScreen: 2,),
    );
  }
}
