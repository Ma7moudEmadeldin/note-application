import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/cubit/addNoteCubit/add_note_cubit.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/view/editPage.dart';
import 'package:store_app/widgets/addItem.dart';
import 'package:store_app/widgets/custom_app_bar.dart';
import 'package:store_app/widgets/notes_list_view.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(NoteModelAdapter());
  await Hive.openBox(kNoteBox);
  runApp(const NotesAPp());
}

class NotesAPp extends StatelessWidget {
  const NotesAPp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => AddNoteCubit(),
        ),
      ],
      child: MaterialApp(
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
      ),
    );
  }
}
