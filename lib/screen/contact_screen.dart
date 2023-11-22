import 'package:dropdown_search/dropdown_search.dart';
import 'package:flutter/material.dart';
import '../component/constant.dart';
import '../moduls/i_key.dart';
import '../widget/text_edit_controler.dart';

class ContactScreen extends StatefulWidget {
  const ContactScreen({super.key});

  @override
  State<ContactScreen> createState() => ContactScreenState();
}

class ContactScreenState extends State<ContactScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController serviceController = TextEditingController();
  TextEditingController desController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(TKeys.contactUs.translate(context),style: TextStyle(fontSize:17,color: Theme.of(context).colorScheme.scrim),),
      ),
      body: ListView(
        padding: const EdgeInsets.only(left: 15, right: 15, bottom: 15,top: 8),
        children: [
          Text(
            TKeys.text.translate(context),
            style: TextStyle(fontSize:16,color: Theme.of(context).colorScheme.scrim),
          ),
          const SizedBox(
            height: 25,
          ),
          CustomTextField(
            title: TKeys.fullName.translate(context),
            controllerName: nameController,
            lines: 1,
            type: TextInputType.text,
            length: 20,
          ),
          CustomTextField(
              title: TKeys.email.translate(context),
              controllerName: emailController,
              lines: 1,
              length: 20,
              type: TextInputType.emailAddress),
          CustomTextField(
              title: TKeys.mobile.translate(context),
              controllerName: mobileController,
              lines: 1,
              length: 14,
              type: TextInputType.phone),
          Text(TKeys.services.translate(context)),
          DropdownSearch<String>.multiSelection(
            items: [TKeys.ecommerce.translate(context), TKeys.webDesign.translate(context), TKeys.brandIdentity.translate(context), TKeys.webMaintenance.translate(context),TKeys.seo.translate(context),TKeys.socialMedia.translate(context),TKeys.google.translate(context),TKeys.emailMarketing.translate(context),TKeys.saudi.translate(context),TKeys.node.translate(context),TKeys.wordPress.translate(context),TKeys.android.translate(context),TKeys.ios.translate(context),TKeys.flutterApp.translate(context)],
            popupProps: PopupPropsMultiSelection.menu(
              showSelectedItems: true,
              disabledItemFn: (String s) => s.startsWith('I'),
            ),
            onChanged: print,
            //selectedItems: ["Brazil"],
          ),
          spaceHeightL,
          CustomTextField(
              title: TKeys.description.translate(context),
              controllerName: desController,
              lines: 6,
              length: 500,
              type: TextInputType.text),

          ElevatedButton(
            style: ElevatedButton.styleFrom(
                backgroundColor: Theme.of(context).colorScheme.secondary,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(5),
              )
            ),
            onPressed: () {},
            child: Text(TKeys.submit.translate(context),style: TextStyle(color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
          )
        ],
      ),
    );
  }
}
