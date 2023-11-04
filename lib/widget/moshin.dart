import 'package:flutter/material.dart';
List<IconData> icons = [
  Icons.face,
  Icons.face_retouching_off_rounded,
  Icons.person_pin_outlined,
  Icons.person,
  Icons.face,
];


class AddNoteColorsWidget extends StatefulWidget {
  const AddNoteColorsWidget({super.key});

  @override
  State<AddNoteColorsWidget> createState() => _AddNoteColorsWidgetState();
}

class _AddNoteColorsWidgetState extends State<AddNoteColorsWidget> {
   int currentIndex = 0;


  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: ListView.separated(
        itemBuilder: (context, index) => InkWell(
          onTap: () {
            setState(() {
              icons[index];
              currentIndex = index;
            });
          },
          child: ColorItem(
            index: currentIndex,
            isSelected: currentIndex == index,
          ),
        ),
        itemCount: icons.length,
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
      ),
    );
  }
}



class ColorItem extends StatelessWidget {
  ColorItem({super.key,required this.isSelected,required this.index});
  int index;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return isSelected ? CircleAvatar(
      radius: 32,
      backgroundColor: Colors.white,
      child: CircleAvatar(
          radius: 21,
          child: Icon(Icons.handshake,),
      ),
    )
        : CircleAvatar(
      radius: 32,
      child: Icon(icons[index]),
    );
  }
}
