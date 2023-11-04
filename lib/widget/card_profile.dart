import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import 'package:share_plus/share_plus.dart';
import 'package:url_launcher/url_launcher.dart';
import '../component/constant.dart';

class CardScreen extends StatelessWidget {
   CardScreen({super.key});


  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(top: 30),
      elevation: 2,
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Theme.of(context).colorScheme.onPrimary),
        child: Column(
          children: [
            buildItemProfile(
              TKeys.setting.translate(context),
              Icons.settings,
              Icons.arrow_forward_ios_outlined,
              () {
                context.push(setting);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.bookConsultation.translate(context),
              Icons.video_camera_front_outlined,
              Icons.arrow_forward_ios_outlined,
              () {
                context.push(book);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.getHelp.translate(context),
              Icons.wifi_calling_3,
              Icons.arrow_forward_ios_outlined,
              () {
                launchUrl(whatsapp);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.nardBlog.translate(context),
              Icons.backup_table_outlined,
              Icons.arrow_forward_ios_outlined,
              () {
               // launchURL(blog);
                launchUrl(blog);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.feedback.translate(context),
              Icons.feed_rounded,
              Icons.arrow_forward_ios_outlined,
              () {
                context.push(feedback);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.rateUs.translate(context),
              Icons.star_rate,
              Icons.arrow_forward_ios_outlined,
              () {
                launchUrl(rate);
              },
              context,
            ),
            buildDivider(Colors.lightBlueAccent),
            buildItemProfile(
              TKeys.sharing.translate(context),
              Icons.share,
              Icons.arrow_forward_ios_outlined,
              () {
                Share.share("https://play.google.com/store/apps/details?id=com.nardagency.app.mobile");
              },
              context,
            ),
          ],
        ),
      ),
    );
  }
}
