import 'package:flutter/material.dart';
import 'package:nard/component/constant.dart';
import 'package:nard/moduls/i_key.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TKeys.notification.translate(context),style: TextStyle(color: Theme.of(context).colorScheme.scrim),),
        shadowColor: Colors.grey,
        elevation: 1,
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
      ),
      body:Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/hand.png"),
            spaceHeightL,
            Text(TKeys.noNotification.translate(context),style: TextStyle(fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
