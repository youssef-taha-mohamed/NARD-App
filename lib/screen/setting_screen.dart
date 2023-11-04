import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/component/constant.dart';
import 'package:nard/moduls/i_key.dart';
import 'package:nard/moduls/localization_services.dart';
import 'package:provider/provider.dart';
import '../moduls/themeProvider.dart';

class SettingScreen extends StatelessWidget {
   SettingScreen({super.key});

  final localizationController = Get.find<LocalizationController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TKeys.setting.translate(context),style: TextStyle(fontSize:17,color: Theme.of(context).colorScheme.scrim),),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: buildIcon(Icons.arrow_back_ios, 25),
        ),
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * .23,
        child: Card(
          margin: const EdgeInsets.only(top: 15, left: 15, right: 15),
          elevation: 2,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Theme.of(context).colorScheme.onPrimary),
            child: Consumer<ThemeProvider>(
              builder: (ctx, value, child) {
                return Column(
                  children: [
                    buildItemProfile(TKeys.language.translate(context), Icons.language,
                        Icons.arrow_forward_ios_outlined, () {
                      settingModalBottomSheet(
                        context,
                        TKeys.language.translate(context),
                        "العربية",
                        "English",
                        () {
                          localizationController.toggleLanguageAr();
                          Navigator.of(context).pop();
                        },
                        () {
                          localizationController.toggleLanguageEn();
                          Navigator.of(context).pop();
                        },
                      );
                    }, context),
                    buildItemProfile(
                      TKeys.theme.translate(context),
                      Icons.sunny,
                      Icons.arrow_forward_ios_outlined,
                      () {
                        settingModalBottomSheet(
                          context,
                          TKeys.theme.translate(context),
                          TKeys.dark.translate(context),
                          TKeys.light.translate(context),
                          () {
                            value.toggleTheme(false);
                            Navigator.of(context).pop();
                          },
                          () {
                            value.toggleTheme(true);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      context,
                    ),
                    buildItemProfile(
                      TKeys.currency.translate(context),
                      Icons.currency_exchange_rounded,
                      Icons.arrow_forward_ios_outlined,
                      () {
                        settingModalBottomSheet(
                          context,
                          TKeys.currency.translate(context),
                          TKeys.usd.translate(context),
                          TKeys.riyal.translate(context),
                          () {
                            //value.toggleTheme(false);
                            Navigator.of(context).pop();
                          },
                          () {
                            //value.toggleTheme(true);
                            Navigator.of(context).pop();
                          },
                        );
                      },
                      context,
                    ),
                  ],
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
