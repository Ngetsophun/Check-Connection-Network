import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:responsive_sizer/responsive_sizer.dart';

class CheckInternetDialogService {
  static showHasInternetSnakeBar({required BuildContext context}) {
    Flushbar(
      showProgressIndicator: false,
      padding: EdgeInsets.only(
          left: 10.px, right: 10.px, top: 20.px, bottom: 20.px),
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: Colors.green,
      duration: const Duration(seconds: 3),
      messageText: Text("Your internet connection was restore",
          style: TextStyle(fontSize: 17.px,color: Colors.white)),
      icon: SvgPicture.asset("assets/ic_internet_network.svg",height: 25.px,width: 25.px),
    ).show(context);
  }

  static showNoInternetSnakeBar({required BuildContext context}) {
    Flushbar(
      showProgressIndicator: false,
      padding: EdgeInsets.only(left: 10.px,right: 10.px,top: 20.px,bottom: 20.px),
      flushbarPosition: FlushbarPosition.BOTTOM,
      backgroundColor: Colors.red,
      duration: const Duration(seconds: 3),
      messageText: Text("No internet connection", style: TextStyle(fontSize: 17.px,color: Colors.white)),
      icon: SvgPicture.asset("assets/ic_internet_network.svg",height: 25.px,width: 25.px),
  
    ).show(context);
  }
}