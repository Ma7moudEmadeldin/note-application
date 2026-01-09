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
            isScrollControlled: true,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadiusGeometry.circular(20)),
            context: context,
            builder: (context) {
              return Padding(
                padding: EdgeInsets.only(
                    bottom: MediaQuery.of(context).viewInsets.bottom),
                child: Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(10)),
                    child: SingleChildScrollView(
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
                      ),
                    )),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
        ));
  }
}
