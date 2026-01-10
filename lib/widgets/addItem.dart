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
                      child: addNoteForm(),
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

class addNoteForm extends StatefulWidget {
  addNoteForm({
    super.key,
  });

  @override
  State<addNoteForm> createState() => _addNoteFormState();
}

class _addNoteFormState extends State<addNoteForm> {
  GlobalKey<FormState> key = GlobalKey();

  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  String? title, description;

  @override
  Widget build(BuildContext context) {
    return Form(
      autovalidateMode: autovalidateMode,
      key: key,
      child: Column(
        children: [
          textField(
            hintText: 'Title',
            onSave: (data) {
              title = data;
            },
          ),
          textField(
            hintText: 'Description',
            maxLines: 10,
            onSave: (data) {
              description = data;
            },
          ),
          customButton(
            text: 'Add Note',
            onTap: () {
              if (key.currentState!.validate()) {
                key.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
              }
              setState(() {});
              // Navigator.pop(context);
            },
          )
        ],
      ),
    );
  }
}
