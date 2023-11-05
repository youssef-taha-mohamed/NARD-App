import 'package:flutter/material.dart';
import 'package:nard/moduls/myprovider.dart';
import 'package:provider/provider.dart';

import '../component/constant.dart';

class BuildPortfolioItem extends StatelessWidget {

  const BuildPortfolioItem({super.key});


  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<MyProvider>(context);
    return Container(
      //transformAlignment: AlignmentDirectional.topStart,
      margin: const EdgeInsets.only(left: 17, right: 17, top: 10, bottom: 10),
      padding: const EdgeInsets.only(left: 20, top: 20,right: 25),
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * .32,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        border: Border.all(width: 1, color: Colors.grey),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            "assets/images/phone.png",
            width: 100,
            height: 100,
          ),
          spaceHeightL,
          buildTextBold(provider.booking[provider.item], context),
          spaceHeightVS,
          Row(
            children: [
              buildTextNormal("Duration"),
              spaceWidthVS,
              buildTextBold("1h", context),
              spaceWidthS,
              buildTextNormal("Capacity"),
              spaceWidthVS,
              buildTextBold("1", context),
            ],
          ),
          spaceHeightL,
          Row(
            children: [
              const Icon(Icons.location_on_outlined,color: Colors.grey,),
              buildTextBold("Online meeting (Google Meet)", context),
            ],
          ),
          spaceHeightL,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      minimumSize: Size(MediaQuery.of(context).size.width * .38,
                          MediaQuery.of(context).size.height * 0.05),
                      backgroundColor: Theme.of(context).colorScheme.secondary,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5),
                      )),
                  onPressed: () {},
                  child: Text("Learn More",style: TextStyle(color: Theme.of(context).colorScheme.scrim),)
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(MediaQuery.of(context).size.width*.38, MediaQuery.of(context).size.height*0.05),
                    backgroundColor:const Color(0x4508EEFF),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5),
                    )
                ),
                onPressed: () {},
                child: Text("Book Now",style: TextStyle(color: Theme.of(context).colorScheme.scrim),),
              ),
            ],
          )
        ],
      ),
    );
  }
}
