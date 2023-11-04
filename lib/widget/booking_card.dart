import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import '../component/constant.dart';

class BookingCard extends StatelessWidget {
  const BookingCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin:const EdgeInsets.only(bottom: 15,top: 10),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * 1,
        height: MediaQuery.of(context).size.height * .20,
        padding:const EdgeInsets.only(top: 5, left: 15, bottom: 15, right: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onPrimary
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  TKeys.free.translate(context),
                  style: TextStyle(fontSize:16,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.scrim),
                ),
                 spaceHeightVS,
                 Text(
                   TKeys.consultation.translate(context),
                  style: TextStyle(fontSize:17,fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.scrim),
                ),
                spaceHeightL,
                ElevatedButton(
                  onPressed: () {
                    context.push(book);
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.amber.shade600,
                  ),
                  child: Text(
                    TKeys.bookNow.translate(context),
                    style: TextStyle(fontWeight: FontWeight.bold,color: Theme.of(context).colorScheme.scrim),
                  ),
                )
              ],
            ),
            Image.asset(
              "assets/images/element.png",
              height: 140,
            ),
          ],
        ),
      ),
    );
  }
}
