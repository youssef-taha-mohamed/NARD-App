import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:nard/moduls/i_key.dart';
import 'package:nard/widget/text_edit_controler.dart';
import '../component/constant.dart';
import '../widget/moshin.dart';

class FeedbackScreen extends StatelessWidget {
  const FeedbackScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 2,
        title: Text(TKeys.feedback.translate(context),style: TextStyle(color: Theme.of(context).colorScheme.scrim,fontSize: 16),),
        leading: IconButton(
          onPressed: (){
            context.pop();
          },
          icon: Icon(Icons.close,color:Theme.of(context).colorScheme.scrim ,),
        ),
      ),
      body: SingleChildScrollView(
        padding:const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(TKeys.note.translate(context),style: TextStyle(fontSize: 15,color: Theme.of(context).colorScheme.scrim,),
            ),
            spaceHeightL,
           const AddNoteColorsWidget(),
            spaceHeightL,
            spaceHeightL,
            buildTextBold(TKeys.comment.translate(context),context),
            createTextField(
                controller: TextEditingController(),
                inputType: TextInputType.text,
                maxLines: 15,
                context: context,),
            spaceHeightL,
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                minimumSize: Size(MediaQuery.of(context).size.width, 50),
                  backgroundColor: Theme.of(context).colorScheme.secondary,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  )),
              onPressed: () {},
              child:buildTextBold(TKeys.submit.translate(context), context),
            ),
          ],
        ),
      ),
    );
  }
}
