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
        backgroundColor: Theme.of(context).colorScheme.onPrimary,
        elevation: 1,
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
          Text(TKeys.fullName.translate(context)),
          createTextField(
            controller: nameController,
            inputType: TextInputType.text,
              context: context,
          ),
          spaceHeightL,
          Text(TKeys.email.translate(context)),
          createTextField(
            controller: emailController,
            inputType: TextInputType.emailAddress,
              context: context,
          ),
          spaceHeightL,
          Text(TKeys.mobile.translate(context)),
          createTextField(
            controller: mobileController,
            inputType: TextInputType.phone,
            context: context,
          ),
          spaceHeightL,
          Text(TKeys.services.translate(context)),
          createTextField(
            controller: serviceController,
            inputType: TextInputType.text,
            context: context,
          ),
          spaceHeightL,
          Text(TKeys.description.translate(context)),
          createTextField(
              controller: desController,
              inputType: TextInputType.text,
              maxLines: 5,
              maxLength: 500,
            context: context,
          ),
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
