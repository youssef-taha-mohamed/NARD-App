import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/component/constant.dart';
import 'package:nard/moduls/i_key.dart';
import '../widget/buildBookConsultationItem.dart';

class BookConsultation extends StatefulWidget {
  const BookConsultation({super.key});

  @override
  State<BookConsultation> createState() => _BookConsultationState();
}

class _BookConsultationState extends State<BookConsultation> {
  TextEditingController controllerSearch = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          TKeys.bookConsultation.translate(context),
        ),
        leading: IconButton(
          onPressed: () {
            context.pop();
          },
          icon: const Icon(Icons.close),
        ),
      ),
      body: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Image.asset("assets/images/unnamed.webp",width: 35,height: 35,),
          ),
          actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.menu))],
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 17.0),
                child: Row(
                  children: [
                     Text(
                      "Services",
                      //textDirection: TextDirection.ltr,
                      style: TextStyle(
                          fontSize: 25,
                          color: Theme.of(context).colorScheme.scrim,
                          fontWeight: FontWeight.bold),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: buildIcon(Icons.search, 40),
                    ),
                  ],
                ),
              ),
              const Divider(
                color: Colors.grey,
              ),
              spaceHeightL,
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 4,
                itemBuilder: (context, index) {
                  return const BuildPortfolioItem();
                },
              ),
              spaceHeightL,
              spaceHeightL,
              Center(
                  child: Image.asset(
                "assets/images/unnamed.webp",
                width: 50,
                height: 50,
              )),
              spaceHeightL,
              buildDivider(Colors.grey),
              spaceHeightL,
              InkWell(
                onTap: () {
                  launchURL("https://www.nardagency.com/");
                },
                child: Center(
                  child: Text(
                    "www.nardagency.com",
                    style: TextStyle(
                        fontSize: 14,
                      color: Colors.blue.shade700
                    ),
                  ),
                ),
              ),
              spaceHeightL,
            ],
          ),
        ),
      ),
    );
  }
}
