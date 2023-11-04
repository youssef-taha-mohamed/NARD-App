import 'package:flutter/material.dart';

import '../component/constant.dart';

class OurServices extends StatelessWidget {
  const OurServices({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Our Services"),
      ),
      body: ListView(
        padding:const EdgeInsets.all(5),
        children: [
          buildItemPopular(
            context,
            "assets/images/one.png",
            "Website Development",
            "Ecommerce",
            "Web Design",
            "Brand Identity",
            "Web Maintenance",
          ),
          buildItemPopular(
            context,
            "assets/images/two.webp",
            "Digital Marketing",
            "SEO",
            "Social Media",
            "Google Ads",
            "Email Marketing",
          ),
          buildItemPopular(
            context,
            "assets/images/photo.png",
            "Hosting",
            "Saudi Hosting",
            "Node.js Hosting",
            "WordPress Hosting",
            "VPN Hosting",
          ),
          buildItemPopular(
            context,
            "assets/images/four.webp",
            "Mobile App",
            "Android",
            "IOS App",
            "Flutter App",
             '',
          ),
        ],
      ),
    );
  }


}
