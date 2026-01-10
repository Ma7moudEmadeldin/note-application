import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:store_app/cubit/createNoteCubit/create_note_cubit.dart';
import 'package:store_app/models/note_model.dart';
import 'package:store_app/widgets/notes_item.dart';

class note_list_view extends StatefulWidget {
  const note_list_view({
    super.key,
  });

  @override
  State<note_list_view> createState() => _note_list_viewState();
}

class _note_list_viewState extends State<note_list_view> {
  void initState() {
    super.initState();
    // ✅ نادي مرة واحدة بس هنا
    BlocProvider.of<CreateNoteCubit>(context).createNote();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CreateNoteCubit, CreateNoteState>(
      builder: (context, state) {
        if (state is CreateNoteSuccess) {
          return ListView.builder(
            padding: EdgeInsets.only(top: 2),
            itemCount: state.notes.length,
            itemBuilder: (context, index) {
              return notes_Item(
                note: state.notes[index],
              ); // مرر الـ note
            },
          );
        } else if (state is CreateNoteFailure) {
          return Center(child: Text(state.errorMessage));
        } else {
          return Center(child: Text('No notes yet'));
        }
      },
    );
  }
}
