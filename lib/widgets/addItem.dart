import 'package:flutter/material.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/widgets/custom_Button.dart';
import 'package:store_app/widgets/textField.dart';

class addItem extends StatelessWidget {
  const addItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        backgroundColor: kSecondyColor,
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      textField(
                        hintText: 'Title',
                      ),
                      textField(
                        hintText: 'Description',
                        maxLines: 10,
                      ),
                      customButton(
                        text: 'Add Note',
                        onTap: () {},
                      )
                    ],
                  ));
            },
          );
        },
        child: Icon(
          Icons.add,
        ));
  }
}
