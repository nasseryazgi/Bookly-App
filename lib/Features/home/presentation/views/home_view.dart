import 'package:bookly/Features/home/presentation/views/widgets/custom_loading_indicator.dart';
import 'package:bookly/Features/home/presentation/views/widgets/home_view_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_offline/flutter_offline.dart';

class HomeView extends StatefulWidget {
  const HomeView({Key? key}) : super(key: key);

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      // body: HomeViewBody(),
      body : OfflineBuilder(
        connectivityBuilder: (
        BuildContext context,
        ConnectivityResult connectivity,
        Widget child,
    ) {
      final bool connected = connectivity != ConnectivityResult.none;
      if(connected){
        return const HomeViewBody();
      }else{

        return SafeArea(
          child: Column(

            children: [

              Positioned(
                height: 24.0,
                left: 0.0,
                right: 0.0,
                child: Container(
                  color: connected ? Color(0xFF00EE44) : Color(0xFFEE4400),
                  child: Center(
                    child: Text("${connected ? 'ONLINE' : 'OFFLINE'}"),
                  ),
                ),
              ),    SizedBox(height: 200,),
              const Text(
                ' Just turn off your internet.',  style: TextStyle(fontSize: 22,
                  color: Colors.blueGrey),
              ),

            ],
          ),
        );
      // return   Column(
      //     crossAxisAlignment: CrossAxisAlignment.center,
      //     children: [
      //       const SizedBox(
      //         height: 100,
      //       ),
      //
      //       const Text(
      //         ' turn off your internet.',  style: TextStyle(fontSize: 22,
      //           color: Colors.blueGrey),
      //       ),
      //
      //       Image.asset('assets/images/no_internet.png')
      //     ],
      //   );
      }
     ;
    },child:const CustomLoadingIndicator(),
    ));
  }
}
