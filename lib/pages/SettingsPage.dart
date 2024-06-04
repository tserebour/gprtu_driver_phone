import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:gap/gap.dart';
import 'package:gprtu_driver_phone/custom_widgets/custom_profile_page_listtile.dart';
import 'package:gprtu_driver_phone/custom_widgets/custom_scaffold.dart';

import '../custom_widgets/BottomNavBar.dart';
import 'PaymentMethodPage.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return CustomScaffold(
      appBar: AppBar(),

      body: Stack(
        children: [
          Column(
            children: [

              Container(
                width: width,
                height: height * 0.3,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/settings_page_pic.png'),
                    fit: BoxFit.cover,
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'GPRTU',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 30,
                    ),
                  ),
                ),
              ),
              Gap(height * 0.06),
              Expanded(
                child: SafeArea(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: ListView(
                      children: [

                        CustomProfilePageListTile(
                            title: 'Payment Method',
                            icon: Icon(Icons.monetization_on, color: Theme.of(context).primaryColor,),
                          onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const PaymentMethodPage(),
                                ),
                              );
                          },
                        ),

                        CustomProfilePageListTile(
                            title: 'Subscription',
                            icon: Icon(Icons.subscriptions, color: Theme.of(context).primaryColor)
                        ),

                        CustomProfilePageListTile(
                            title: 'Union Dues',
                            icon: Icon(Icons.card_membership, color: Theme.of(context).primaryColor)
                        ),

                        CustomProfilePageListTile(
                            title: "Logout",
                            icon: Icon(Icons.logout, color: Theme.of(context).primaryColor)
                        ),


                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
          Positioned(
            top: height * 0.15,
            left: width * 0.3,
            child: CircleAvatar(
              radius: width * 0.2,
              //background image
              backgroundImage: const AssetImage(
                "assets/images/default_profile.png",
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavBar(currentIndex: 2,),
    );
  }
}
