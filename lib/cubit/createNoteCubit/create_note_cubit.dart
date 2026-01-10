import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/models/note_model.dart';

part 'create_note_state.dart';

class CreateNoteCubit extends Cubit<CreateNoteState> {
  CreateNoteCubit() : super(CreateNoteInitial());

  createNote() {
    try {
      var note = Hive.box<NoteModel>(kNoteBox);

      List<NoteModel> notes = note.values.toList();
      emit(CreateNoteSuccess(notes));
    } catch (e) {
      emit(CreateNoteFailure('error ${e.toString()}'));
    }
  }
}
