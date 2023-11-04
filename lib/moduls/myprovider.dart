import 'package:flutter/material.dart';
import '../component/constant.dart';
import '../screen/home.dart';
import '../screen/contact_screen.dart';
import '../screen/profile.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class MyProvider with ChangeNotifier{

 // BuildContext context = BuildContext as BuildContext;
  int _currentIndex = 0;
  //var lang = AppLocalizations.of(context)!;

  int item = 0;
  void add(index){
    booking[index];
  }
 int get currentIndex => _currentIndex;


  List<BottomNavigationBarItem> bottomItems =const [
    BottomNavigationBarItem(
      icon: Icon(Icons.home),
      label: 'Home',
      backgroundColor: Colors.red,
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.connect_without_contact_outlined),
      label: 'Contact Us',
      backgroundColor: Colors.green,
    ),
     BottomNavigationBarItem(
      icon: Icon(Icons.person_outline_rounded),
      label: 'My Account',
      backgroundColor: Colors.purple,
    ),
  ];
  List<Widget> pages = [
    const Home(),
    const ContactScreen(),
    const ProfileScreen()
  ];

  void changeBottomNavBar(int index) {
    _currentIndex = index;
      notifyListeners();
  }
  List<String> title = ["Ecommerce","Dashboard","Training & Courses","Ecommerce"];
  List<String> booking = ["Digital Marketing","Mobile App","E-Commerce & Web Maintenance","Branding"];
  List<String> subTitle = ["Optixshop","Qassim Staff","Ajad Academy","La Maison D'ore "];
  List<Widget> image = [
    Row(
      children: [
        buildIcon(Icons.play_arrow, 35),
        buildIcon(Icons.apple, 35),
        buildIcon(Icons.computer, 35),
      ],
    ),
    buildIcon(Icons.computer, 35),
    buildIcon(Icons.computer, 35),
    buildIcon(Icons.computer, 35),
  ];
}