import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/cubit/addNoteCubit/add_note_cubit.dart';
import 'package:store_app/widgets/addNote_form.dart';

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
                  child: BlocConsumer<AddNoteCubit, AddNoteState>(
                    listener: (context, state) {
                      if (state is AddNoteFailure) {
                        print('error while creating note${state.errorMessage}');
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                                'Failed to add note: ${state.errorMessage}'),
                            backgroundColor: Colors.red,
                          ),
                        );
                      }
                      if (state is AddNoteSucceffull) {
                        Navigator.pop(context);
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                            content: Text('Note added successfully!'),
                            backgroundColor: Colors.green,
                          ),
                        );
                      }
                    },
                    builder: (context, state) {
                      return ModalProgressHUD(
                          inAsyncCall: state is AddNoteLoading ? true : false,
                          child: SingleChildScrollView(child: addNoteForm()));
                    },
                  ),
                ),
              );
            },
          );
        },
        child: Icon(
          Icons.add,
        ));
  }
}
