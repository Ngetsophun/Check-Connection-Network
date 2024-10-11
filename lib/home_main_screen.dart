import 'package:check_connection_network/widget/check_internet_service.dart';
import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class HomeMainScreen extends StatefulWidget {
  const HomeMainScreen({super.key});

  @override
  State<HomeMainScreen> createState() => _HomeMainScreenState();
}

class _HomeMainScreenState extends State<HomeMainScreen> {
  bool firstCheckInternet = false;


  // Future<void> _updateConnectionStatus(ConnectivityResult result) async {
  //   switch (result) {
  //     case ConnectivityResult.wifi:
  //       if (Navigator.canPop(context)) {
  //         Navigator.of(context).pop();
  //       }
  //       break;
  //     case ConnectivityResult.mobile:
  //       CheckInternetDialogService.showHasInternetSnakeBar(context: context);
  //       break;
  //     case ConnectivityResult.none:
  //       CheckInternetDialogService.showHasInternetSnakeBar(context: context);
  //       break;
  //     default:
  //       CheckInternetDialogService.showNoInternetSnakeBar(context: context);
  //       break;
  //   }
  // }
    Future<void> _updateConnectionStatus(ConnectivityResult result) async {
    switch (result) {
      case ConnectivityResult.wifi:
        CheckInternetDialogService.showHasInternetSnakeBar(context: context);
        break;
      case ConnectivityResult.mobile:
        CheckInternetDialogService.showHasInternetSnakeBar(context: context);
        break;
      case ConnectivityResult.none:
        CheckInternetDialogService.showNoInternetSnakeBar(context: context);
        break;
      default:
        CheckInternetDialogService.showNoInternetSnakeBar(context: context);
        break;
    }
  }

  void initState() {
    Connectivity()
        .onConnectivityChanged
        .listen((List<ConnectivityResult> result) {
      if (firstCheckInternet) {
        _updateConnectionStatus(result.first);
      } else {
        firstCheckInternet = true;
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Check Connection Internet",
        ),
      ),
      body:  Center(
        child: Text("Home Screen",style: TextStyle(fontSize: 17.px),),
      ),
    );
  }
}
