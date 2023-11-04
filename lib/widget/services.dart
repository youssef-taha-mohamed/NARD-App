import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:nard/moduls/i_key.dart';

class BuildItem extends StatelessWidget {
  const BuildItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin:const EdgeInsets.only(bottom: 15,top: 10),
      width: MediaQuery.of(context).size.width*1,
      height: 110,
      child: DottedBorder(
        //padding:const EdgeInsets.only(left:85),
        borderType: BorderType.RRect,
        radius:const Radius.circular(10),
        strokeWidth: 2,
        color: Theme.of(context).colorScheme.scrim,
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(TKeys.anyService.translate(context),style: TextStyle(fontSize:15,fontWeight: FontWeight.w900),),
              Text(TKeys.subscription.translate(context),style: TextStyle(fontSize: 12,color: Theme.of(context).colorScheme.onSurfaceVariant),),
            ],
          ),
        ),
      ),
    );
  }
}
