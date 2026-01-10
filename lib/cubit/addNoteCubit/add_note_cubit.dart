import 'package:bloc/bloc.dart';
import 'package:hive_flutter/adapters.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/models/note_model.dart';

part 'add_note_state.dart';

class AddNoteCubit extends Cubit<AddNoteState> {
  AddNoteCubit() : super(AddNoteInitial());

  addNote(NoteModel note) async {
    emit(AddNoteLoading());
    try {
      var noteBox = Hive.box<NoteModel>(kNoteBox);
      await noteBox.add(note);
      emit(AddNoteSucceffull());
    } catch (e) {
      emit(AddNoteFailure('error while adding note ${e.toString()}'));
    }
  }
}
