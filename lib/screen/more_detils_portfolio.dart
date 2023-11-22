import 'package:flutter/material.dart';
import 'package:nard/moduls/i_key.dart';
import '../widget/build_portfolio_item.dart';
class MoreDetailsPortfolio extends StatelessWidget {
  const MoreDetailsPortfolio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TKeys.portfolio.translate(context),
        )
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height * 1,
        child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) => buildPortfolioItem(index,context,15),
          itemCount: 4,
          separatorBuilder: (context, index) => Container(width: 9),
        ),
      ),
    );
  }
}
