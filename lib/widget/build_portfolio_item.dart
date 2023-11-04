import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../component/constant.dart';
import '../moduls/myprovider.dart';
// class BuildPortfolioItem extends StatelessWidget {
//   int index;
//   double margin;
//
//   BuildPortfolioItem(this.index,this.margin, {super.key});
//   @override
//   Widget build(BuildContext context) {
//     var provider = Provider.of<MyProvider>(context);
//     return InkWell(
//       onTap: () {},
//       child: Card(
//         color: Theme.of(context).colorScheme.onPrimary,
//         margin: EdgeInsets.only(bottom: 15, top: 10, left: margin, right: margin),
//         elevation: 2,
//         shape: RoundedRectangleBorder(
//           borderRadius: BorderRadius.circular(15),
//         ),
//         child: Container(
//           width: MediaQuery.of(context).size.width * .92,
//           height: MediaQuery.of(context).size.height * .32,
//           padding: const EdgeInsets.only(top: 5, left: 20, bottom: 15, right: 20),
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(15),
//             color: Theme.of(context).colorScheme.surface,
//           ),
//           child: Column(
//             children: [
//               Expanded(
//                   child: Image.asset(
//                     "assets/images/phone.png",
//                     width: 250,
//                     height: 250,
//                   )),
//               SizedBox(
//                   child: Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                     children: [
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           buildTextBold(provider.title[index], context),
//                           buildTextNormal(provider.subTitle[index]),
//                         ],
//                       ),
//                       Row(
//                         children: [
//                           provider.image[index],
//                         ],
//                       ),
//                     ],
//                   ))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

InkWell buildPortfolioItem(int index, BuildContext context, double margin) {
  var provider = Provider.of<MyProvider>(context);
  return InkWell(
    onTap: () {},
    child: Card(
      //color: Theme.of(context).colorScheme.shadow,
      margin: EdgeInsets.only(bottom: 15, top: 10, left: margin, right: margin),
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      child: Container(
        width: MediaQuery.of(context).size.width * .92,
        height: MediaQuery.of(context).size.height * .33,
        padding: const EdgeInsets.only(top: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Theme.of(context).colorScheme.onTertiary,
        ),
        child: Column(
          children: [
            Expanded(
                child: Image.asset(
                  "assets/images/phone.png",
                  width: 250,
                  height: 250,
                )),
            Container(
              padding:const EdgeInsets.only(left: 12,right: 12,top: 8),
              decoration: BoxDecoration(
                borderRadius:const BorderRadius.only(
                  bottomLeft: Radius.circular(15),
                  bottomRight: Radius.circular(15),
                ),
                color: Theme.of(context).colorScheme.surface,
              ),
              height: MediaQuery.of(context).size.height*.08,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        buildTextBold(provider.title[index], context),
                        buildTextNormal(provider.subTitle[index]),
                      ],
                    ),
                    Row(
                      children: [
                        provider.image[index],
                      ],
                    ),
                  ],
                ))
          ],
        ),
      ),
    ),
  );
}