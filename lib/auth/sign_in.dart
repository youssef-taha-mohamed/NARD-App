import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import '../component/constant.dart';
import '../widget/text_edit_controler.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  TextEditingController emailController = TextEditingController();
  TextEditingController userNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          //titleTextStyle: TextStyle(fontSize: 17,fontWeight: FontWeight.normal),
          title: Text(TKeys.signIn.translate(context)),
          leading: InkWell(
            child: const Icon(Icons.close),
            onTap: () {
              context.pop();
            },
          ),
        ),
        body: ListView(
          padding: const EdgeInsets.only(top: 100, left: 10, right: 10),
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/lock.png",
                  width: 170,
                  height: 170,
                ),
                createTextField(
                  controller: emailController,
                  inputType: TextInputType.text,
                  label: TKeys.emailT.translate(context),
                  context: context,
                ),
                spaceHeightL,
                createTextField(
                  controller: userNameController,
                  inputType: TextInputType.text,
                  label: TKeys.password.translate(context),
                  isPassword:true,
                  context: context,
                ),
              ],
            ),
            spaceHeightL,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              onPressed: () {},
              child:buildTextBold(TKeys.login.translate(context), context),
            ),
            spaceHeightL,
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  alignment: Alignment.topRight
              ),
              child: Text(
                TKeys.forget.translate(context),
                style: TextStyle(fontSize: 17),
                textAlign: TextAlign.end,
              ),
            ),
          ],
        ));
  }
}
