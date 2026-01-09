import 'package:flutter/material.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/notes_item.dart';
import 'package:store_app/widgets/notes_list_view.dart';

void main() {
  runApp(const shoppingApp());
}

class shoppingApp extends StatelessWidget {
  const shoppingApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
        floatingActionButton:
            FloatingActionButton(child: Icon(Icons.add), onPressed: () {}),
        body: Column(
          children: [
            customAppBar(),
            Expanded(
              child: note_list_view(),
            )
          ],
        ),
      ),
    );
  }
}
