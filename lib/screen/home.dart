import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import '../widget/booking_card.dart';
import '../widget/phone_card.dart';

import '../component/constant.dart';
import '../widget/services.dart';
import '../widget/list_view.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          titleSpacing: 15,
            actions: [
              IconButton(
                onPressed: () {
                  context.push(notification);
                },
                icon: const Icon(
                  Icons.notifications,
                  color: Colors.amber,
                  size: 40,
                ),
              ),
            ],
            title: Row(
              children: [
                Text(
                  TKeys.hi.translate(context),
                  style: TextStyle(color:Theme.of(context).colorScheme.scrim, fontSize: 22),
                ),
                const SizedBox(width: 9,),
                Image.asset("assets/images/hand.png",cacheWidth: 35,),
              ],
            ),),
        body: RefreshIndicator(
          onRefresh: ()async{
            await Future.delayed(const Duration(seconds: 1));
          },
          child: SingleChildScrollView(
            padding:const EdgeInsets.all(15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                buildRow(
                    TKeys.popularService.translate(context),
                    (){
                      context.push(ourServices);
                    },
                  context
                ),
                spaceHeightL,
                const ListViewBuild(),
                buildTextBold(TKeys.myService.translate(context),context),
                const BuildItem(),
                buildTextBold(TKeys.booking.translate(context),context),
                const BookingCard(),
                buildRow(
                    TKeys.portfolio.translate(context),
                      (){
                    context.push(portfolio);
                  },
                  context
                ),
                 const PhoneCard(),
              ],
            ),
          ),
        ));
  }
  }
