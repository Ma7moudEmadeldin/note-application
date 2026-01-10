part of 'create_note_cubit.dart';

sealed class CreateNoteState {}

final class CreateNoteInitial extends CreateNoteState {}

final class CreateNoteSuccess extends CreateNoteState {
  final List<NoteModel> notes;

  CreateNoteSuccess(this.notes);
}

final class CreateNoteLoading extends CreateNoteState {}

final class CreateNoteFailure extends CreateNoteState {
  final String errorMessage;

  CreateNoteFailure(this.errorMessage);
}
