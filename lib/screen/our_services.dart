import 'package:flutter/material.dart';
import 'package:nard/moduls/i_key.dart';

import '../component/constant.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TKeys.ourService.translate(context),style: TextStyle(color: Theme.of(context).colorScheme.scrim,fontSize: 17),),
      ),
      body: ListView(
        padding:const EdgeInsets.all(5),
        children: [
          buildItemPopular(
            context,
            "assets/images/one.png",
            TKeys.websiteDevelopment.translate(context),
            TKeys.ecommerce.translate(context),
            TKeys.webDesign.translate(context),
            TKeys.brandIdentity.translate(context),
            TKeys.webMaintenance.translate(context),
          ),
          buildItemPopular(
            context,
            "assets/images/two.webp",
            TKeys.digitalMarketing.translate(context),
            TKeys.seo.translate(context),
            TKeys.socialMedia.translate(context),
            TKeys.google.translate(context),
            TKeys.emailMarketing.translate(context),
          ),
          buildItemPopular(
            context,
            "assets/images/photo.png",
            TKeys.hosting.translate(context),
            TKeys.saudi.translate(context),
            TKeys.node.translate(context),
            TKeys.wordPress.translate(context),
            TKeys.vPNHosting.translate(context),
          ),
          buildItemPopular(
            context,
            "assets/images/four.webp",
            TKeys.mobileApp.translate(context),
            TKeys.android.translate(context),
            TKeys.ios.translate(context),
            TKeys.flutterApp.translate(context),
            '',
          ),
        ],
      ),
    );
  }


}
