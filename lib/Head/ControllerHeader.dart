import 'package:flutter/material.dart';
import 'package:omegaalfav1/Head/Balance.dart';
import 'package:omegaalfav1/Head/Wallet.dart';

import '../JsonParse.dart';

Widget ControllerHeader(int index, User user,BuildContext context ){
  switch(index)
  {
    case 2:{
      return BalanseWidget(user, context);
    }
    break;
    case 1:{
      return WalletWidget(user, context);
    }
    break;
  }


}