import 'package:flutter/material.dart';
import 'package:nard/moduls/i_key.dart';

class ListViewBuild extends StatefulWidget {
  const ListViewBuild({super.key});

  @override
  State<ListViewBuild> createState() => ListViewBuildState();
}

class ListViewBuildState extends State<ListViewBuild> {


  List<String> image = [
    'assets/images/shopping.png',
    'assets/images/instagram.png',
    'assets/images/photo.png',
    'assets/images/flutter.png'
  ];


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .17,
      width: MediaQuery.of(context).size.width * 1,
      child: ListView.separated(
        itemBuilder: (context, index) => buildInkWell(index),
        itemCount: image.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Container(width: 9),
      ),
    );
  }

  InkWell buildInkWell(int index) {
    List<String> title = [
      TKeys.ecommerce.translate(context),
      TKeys.socialMedia.translate(context),
      TKeys.saudi.translate(context),
      TKeys.flutterApp.translate(context),
    ];
    return InkWell(
        onTap: () {},
        child: Column(
          children: [
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Container(
                  width: MediaQuery.of(context).size.width*.20,
                  height: MediaQuery.of(context).size.height*.10,
                  decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.onPrimary,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child:Image.asset(image[index],cacheWidth: 75,),
              ),
            ),
            Text(title[index],style:const TextStyle(fontSize: 12),),
          ],
        ));
  }
}
