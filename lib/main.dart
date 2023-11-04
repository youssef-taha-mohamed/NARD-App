import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:nard/moduls/languageprovider.dart';
import 'package:nard/moduls/localization_services.dart';
import 'package:nard/moduls/themeProvider.dart';
import 'package:nard/utils/typography.dart';
import '../utils/color_schemes.g.dart';
import '../moduls/myprovider.dart';
import 'package:provider/provider.dart';
import '../component/route.dart';

void main(){
  runApp(
    MultiProvider(providers: [
      ChangeNotifierProvider(
        create: (context) => MyProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => ThemeProvider(),
      ),
      ChangeNotifierProvider(
        create: (context) => LanguageProvider(),
      ),
    ],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final localizationController = Get.put(LocalizationController());
  @override
  Widget build(BuildContext context) {
    return GetBuilder(
      init: localizationController,
        builder: (LocalizationController controller){
          return Consumer<ThemeProvider>(builder: (ctx,value,child){
            return MaterialApp.router(
              localeResolutionCallback: LocalizationService.localeResolutionCallBack,
              localizationsDelegates: LocalizationService.localizationsDelegate,
              supportedLocales: LocalizationService.supportedLocales,
              locale: controller.currentLanguage != '' ? Locale(controller.currentLanguage,'') : null,
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                scaffoldBackgroundColor: Theme.of(context).colorScheme.onPrimary,
                appBarTheme: AppBarTheme(
                    systemOverlayStyle: SystemUiOverlayStyle(
                        statusBarColor: Theme.of(context).colorScheme.onPrimaryContainer,
                        statusBarIconBrightness: Brightness.dark
                    ),
                    backgroundColor: Theme.of(context).colorScheme.onPrimaryContainer,
                    titleTextStyle:const TextStyle(
                      //color: Colors.black,
                      fontWeight: FontWeight.bold,
                    )
                ),
                // bottomNavigationBarTheme: BottomNavigationBarThemeData(
                //   type: BottomNavigationBarType.fixed,
                // ),
                colorScheme: lightColorScheme,
                useMaterial3: true,
                textTheme: textTheme,
              ),
              darkTheme: ThemeData(
                colorScheme: darkColorScheme,
                useMaterial3: true,
                textTheme: textTheme,
              ),
              themeMode: value.darkTheme ? ThemeMode.light : ThemeMode.dark,
              routerConfig: router(),

            );
          });
        }
    );
  }
}
