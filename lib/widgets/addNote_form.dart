import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_Button.dart';
import 'package:store_app/widgets/textField.dart';

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
