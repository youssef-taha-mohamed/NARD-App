import 'package:flutter/material.dart';
import 'package:nard/moduls/i_key.dart';
import 'package:url_launcher/url_launcher.dart';


String home = '/home';
String notification = '/notification';
String book = '/book';
String login = '/login';
String profile = '/profile';
String setting = '/setting';
String portfolio = '/portfolio';
String ourServices = '/ourServices';
String phoneCard = '/phoneCard';
String feedback = '/feedback';
final Uri whatsapp = Uri.parse('https://wa.me/+966500813232');
final Uri blog = Uri.parse('https://www.nardagency.com/');
final Uri rate = Uri.parse(
    'https://play.google.com/store/apps/details?id=com.nardagency.app.mobile');
String text =
    "Our sales team is always happy to provide information for your inquiry. Kindly fill out the belo form and send it to us. We will get back to you in a short time.";
SizedBox spaceHeightL = const SizedBox(
  height: 15,
);
SizedBox spaceHeightVS = const SizedBox(
  height: 5,
);
SizedBox spaceWidthS = const SizedBox(
  width: 10,
);
SizedBox spaceWidthVS = const SizedBox(
  width: 5,
);

launchURL(String name) async {
  final Uri url = Uri.parse(name);
  if (!await launchUrl(url)) {
    throw Exception('Could not launch $url');
  }
}

void settingModalBottomSheet(
    ctx, String title, String title2, String title3,void Function() function1,void Function() function2) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(15), topRight: Radius.circular(15)),
      ),
      context: ctx,
      builder: (BuildContext bc) {
        return Container(
          padding: const EdgeInsets.all(15),
          child: Wrap(
            runSpacing: 10,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 12.0,right: 12,bottom: 5),
                child: buildTextBold(title, ctx),
              ),
              buildDivider(Colors.grey),
              ListTile(
                title: buildTextNormal(title2),
                onTap: function1
              ),
              ListTile(
                title: buildTextNormal(title3),
                onTap: function2
              ),
            ],
          ),
        );
      });
}

Divider buildDivider(Color color) {
  return Divider(
    height: 5,
    thickness: 1,
    indent: 10,
    endIndent: 10,
    color: color,
  );
}

Row buildRow(String title, void Function() function, BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      buildTextBold(title, context),
      InkWell(
        onTap: function,
        child: Row(
          children: [
            Text(TKeys.more.translate(context)),
            Icon(Icons.arrow_forward_ios_outlined),
          ],
        ),
      ),
    ],
  );
}

Icon buildIcon(IconData icon, double size) => Icon(
      icon,
      size: size,
    );

Text buildTextBold(String title, BuildContext context) {
  return Text(
    title,
    textDirection: TextDirection.ltr,
    style: TextStyle(
        fontWeight: FontWeight.w900,
        fontSize: 16,
        color: Theme.of(context).colorScheme.scrim),
  );
}

Text buildTextNormal(String title) {
  return Text(
    title,
    style: const TextStyle(fontSize: 14),
  );
}

InkWell buildItemProfile(String name, IconData iconData, IconData backIcon,
    void Function() function, context) {
  return InkWell(
    child: ListTile(
      title: Text(
        name,
        style: TextStyle(color: Theme.of(context).colorScheme.scrim),
      ),
      contentPadding: const EdgeInsets.only(left: 20, right: 11),
      leading: Icon(
        iconData,
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      trailing: Icon(
        backIcon,
        color: Theme.of(context).colorScheme.onSecondary,
      ),
      onTap: function,
    ),
  );
}

Card buildItemPopular(
  BuildContext context,
  String name,
  String title,
  String titleOne,
  String titleTwo,
  String titleThree,
  String titleFour,
) {
  return Card(
    margin: const EdgeInsets.only(top: 15, left: 13, right: 13, bottom: 1),
    //color: Colors.white,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    child: Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Theme.of(context).colorScheme.onPrimary,
      ),
      padding: const EdgeInsets.only(top: 10, left: 20, bottom: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Image.asset(
                name,
                width: 35,
                height: 45,
              ),
              spaceWidthS,
              Text(
                title,
                style: TextStyle(
                    color: Theme.of(context).colorScheme.scrim,
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          spaceHeightL,
          Text(titleOne),
          spaceHeightL,
          Text(titleTwo),
          spaceHeightL,
          Text(titleThree),
          spaceHeightL,
          Text(titleFour),
        ],
      ),
    ),
  );
}
