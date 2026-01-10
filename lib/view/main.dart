import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/view/editPage.dart';
import 'package:store_app/widgets/addItem.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/notes_list_view.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox(kNoteBox);
  Hive.registerAdapter(NoteModelAdapter());
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
        floatingActionButton: addItem(),
        body: Column(
          children: [
            customAppBar(
              title: 'Notes',
              icon: Icon(Icons.search),
            ),
            Expanded(
              child: note_list_view(),
            )
          ],
        ),
      ),
      routes: {
        'editPage': (context) => editPage(),
      },
    );
  }
}
