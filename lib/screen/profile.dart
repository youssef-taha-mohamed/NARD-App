import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import '../component/constant.dart';
import '../widget/card_profile.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TKeys.myAccount.translate(context)),
      ),
      body: ListView(
        padding:const EdgeInsets.all(15),
        children: [
          Row(
            children: [
               CircleAvatar(
                radius: 50,
                child: Image.asset("assets/images/avatar.png"),
              ),
              spaceWidthS,
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(TKeys.hi.translate(context),style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                      Image.asset("assets/images/hand.png",width: 30,height: 30),
                    ],
                  ),
                  InkWell(
                    onTap: (){
                      context.push(login);
                    },
                      child:Text(TKeys.signIn.translate(context),style: TextStyle(fontWeight: FontWeight.w700),)),
                ],
              )
            ],
          ),
           CardScreen(),
        ],
      )
    );
  }
}
