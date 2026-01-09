import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/textField.dart';

class editPage extends StatelessWidget {
  const editPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          customAppBar(
            title: 'Edit Note',
            icon: Icon(Icons.done),
          ),
          textField(
            hintText: 'Title',
          ),
          textField(
            hintText: 'Description',
            maxLines: 10,
          ),
        ],
      ),
    );
  }
}
