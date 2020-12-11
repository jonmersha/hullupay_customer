import 'package:dolche/composed_widjet/home_grid_menu.dart';
import 'package:flutter/material.dart';



void main()=>runApp(Tabs());
class Tabs extends StatelessWidget {


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("images/back.png"), fit: BoxFit.cover)),
      child: DefaultTabController(
        length: 1,
        child: new Scaffold(
          body: TabBarView(
            children: [
              new Container(
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("images/back.png"), fit: BoxFit.cover)),
                  //color: const Color(0x00000000),
                  child: BankGirdMenu(controller: null,)
              ),
//              new Container(
////                  color: const Color(0x00000000),
////                  child: BankGirdMenu()
//
//              ),
//              new Container(
////                  color:const Color(0x00000000),
////                  child: BankGirdMenu()
//              ),
//              new Container(
////                  color: const Color(0xFF000000),
////                  child: SettingMenu()
//              ),
            ],
          ),
          bottomNavigationBar: Container(
            color: const Color(0xff00aeef),//bottom tab holder buttom
            child: new TabBar(

              tabs: [
                Tab(
                  icon: new Icon(Icons.home),
                ),
//                Tab(
//                  icon: new Icon(Icons.shop),
//
//                ),
//                Tab(
//                  icon: new Icon(Icons.perm_identity),
//                ),
//                Tab(icon: new Icon(Icons.settings),
//                )
              ],

              labelColor: const Color(0xFFffffff),
              unselectedLabelColor: const Color(0xFF000000),
              indicatorSize: TabBarIndicatorSize.label,
              indicatorPadding: EdgeInsets.all(1.0),
              indicatorColor: const Color(0xFF000000),
            ),
          ),

        ),
      ),
    );
  }
}