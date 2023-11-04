import 'package:flutter/material.dart';

import 'build_portfolio_item.dart';


class PhoneCard extends StatelessWidget {
   const PhoneCard({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * .32,
      width: MediaQuery.of(context).size.width * .92,
      child: ListView.separated(
        shrinkWrap: true,
        itemBuilder: (context, index) => buildPortfolioItem(index,context,0),
        itemCount: 4,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => Container(width: 9),
      ),
    );
  }

}

