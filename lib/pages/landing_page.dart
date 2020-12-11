
import 'package:dolche/composed_widjet/image_avatar.dart';
import 'package:dolche/composed_widjet/tab.dart';
import 'package:dolche/custom_color/custom_color.dart';
import 'package:dolche/custom_widjet/custom_text.dart';
import 'package:dolche/methods/application_bar.dart';
import 'package:flutter/material.dart';

class LandingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: ApplicationBar('dolchePay').buildPreferredSize(),
      body: Container(

          child: Center(child: Tabs())
      ),

      drawer: Drawer(

        child: Container(

          child: ListView(

            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              DrawerHeader(
                child: Column(
                  children: <Widget>[
                    DrowerImage("logo.png",'',9,context),
                    CustomText('dolchePay',16.0,1.5,Colors.white),
                  ],
                ),
                decoration: BoxDecoration(
                  color: CustomColor.black,
                ),

              ),
              ListTile(
                title: CustomText('Account Management',15.0,1.5,const Color(0xFF000000)),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context)=>new LandingPage()),
                  );
                },
              )
            ],
          ),
        ),
      ),
    );

  }
}
