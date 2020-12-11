import 'package:flutter/material.dart';

class BankGirdMenu extends StatelessWidget {
  const BankGirdMenu({
    Key key,
    @required this.controller,
  }) : super(key: key);

  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {
        return GridView.count(
          childAspectRatio:(2.0),
          //shrinkWrap: true,
          crossAxisCount: orientation == Orientation.portrait ? 2: 2, children: <Widget>[
         // CustomFlatButton(BalanceEnquery(),"balance.png",'Balance Query',context),
         // CustomFlatButton(CashierManagement(), "cashier.png",'Cashier Management',context),


       //   CustomFlatButton(SendMoney(),"sendmoney.png",'Send Money',context),
        //  CustomFlatButton(WithdrawMoney(),"withdraw_money.png",'Withdraw Money',context),


         // CustomFlatButton(Evoucher(),"mobile_top_up.png",'Telecom Service',context),
          //CustomFlatButton(GebetaService(),"gebeta.png",'Gebeta',context),


        ],);
      },
    );
  }
}