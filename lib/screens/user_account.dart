
import 'package:flutter/material.dart';
import 'package:parios/components/user_avater.dart';

import 'package:parios/constants/colors.dart';
import 'package:parios/constants/texts.dart';


class UserAccountScreen extends StatelessWidget {
  const UserAccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        foregroundColor: bodyPrimaryColor,
        title: CustomText(title: 'My Account', size: 25.0, color: bodyPrimaryColor,),
      ),
      body: SafeArea(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
          child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // header
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                    height: 80.0,
                    width: 350.0,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: boxPrimaryColor,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            const UserAvatar(h: 68.0, w: 68.0, image: 'assets/images/parios_splash_user.png'),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                CustomText(title: 'Olivia Scott', color: Colors.white, size: 16.0,),
                                CustomText(title: 'UI/UX Designer', color: Colors.white, size: 13.0,),
                              ],
                            ),
                          ],
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: const Icon(Icons.mode_edit_outline_outlined, size: 20.0, color: Colors.white,))
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 50.0,
                  ),

                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      color: Colors.white60,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.1),
                          spreadRadius: 5,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    child: Column(
                      children: [

                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.account_circle_outlined, color: boxPrimaryColor),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(title: 'Profile', color: boxPrimaryColor, size: 16.0,),
                                      CustomText(title: 'Manage changes to your account', color: boxPrimaryColor, size: 10.0,)
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right, color: boxPrimaryColor,)
                            ],
                          ),
                        ),
                        Divider(color: boxPrimaryColor, indent: 50.0, thickness: 1.0, endIndent: 10.0,),

                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.credit_card, color: boxPrimaryColor),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(title: 'Cards', color: boxPrimaryColor, size: 16.0,),
                                      CustomText(title: 'Secure your cards for safety', color: boxPrimaryColor, size: 10.0,)
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right, color: boxPrimaryColor,)
                            ],
                          ),
                        ),
                        Divider(color: boxPrimaryColor, indent: 50.0, thickness: 1.0, endIndent: 10.0,),

                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.settings_suggest_outlined, color: boxPrimaryColor),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(title: 'Preferences', color: boxPrimaryColor, size: 16.0,),
                                      CustomText(title: 'Customise your app ', color: boxPrimaryColor, size: 10.0,)
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right, color: boxPrimaryColor,)
                            ],
                          ),
                        ),
                        Divider(color: boxPrimaryColor, indent: 50.0, thickness: 1.0, endIndent: 10.0,),

                        Container(
                          margin: const EdgeInsets.all(10.0),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Icon(Icons.logout_outlined, color: boxPrimaryColor, ),
                                  SizedBox(
                                    width: 20.0,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      CustomText(title: 'Logout', color: boxPrimaryColor, size: 16.0,),
                                      CustomText(title: 'Logout for your account', color: boxPrimaryColor, size: 10.0,)
                                    ],
                                  ),
                                ],
                              ),
                              Icon(Icons.chevron_right, color: boxPrimaryColor,)
                            ],
                          ),
                        ),
                        Divider(color: boxPrimaryColor, indent: 50.0, thickness: 1.0, endIndent: 10.0,),
                      ],
                    ),
                  )
                ],
              ),
        ),
        )
      ),
    );
  }
}
