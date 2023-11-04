import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../moduls/myprovider.dart';


class BottomNavigationBarExample extends StatelessWidget {
  const BottomNavigationBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<MyProvider>(context);
    return Scaffold(
      body: provider.pages.elementAt(provider.currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor:Theme.of(context).colorScheme.onError,
        //selectedLabelStyle: ,
        items: provider.bottomItems,
        currentIndex: provider.currentIndex,
        selectedItemColor: Theme.of(context).colorScheme.secondaryContainer,
        unselectedItemColor: Theme.of(context).colorScheme.onSecondaryContainer,
        onTap: (index)=> provider.changeBottomNavBar(index),
      ),
    );
  }
}
