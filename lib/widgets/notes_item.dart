import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive/hive.dart';
import 'package:store_app/consts.dart';
import 'package:store_app/cubit/createNoteCubit/create_note_cubit.dart';
import 'package:store_app/models/note_model.dart';

class notes_Item extends StatelessWidget {
  notes_Item({super.key, required this.note});
  final NoteModel note;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, 'editPage');
      },
      child: Container(
        margin: EdgeInsets.all(10),
        decoration: BoxDecoration(
            color: Color(note.color), borderRadius: BorderRadius.circular(10)),
        height: 250,
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 10),
                    child: Text(
                      note.title,
                      style: TextStyle(
                        fontSize: 28,
                      ),
                      maxLines: 2,
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsetsGeometry.only(left: 10),
                    child: Text(
                      note.desc,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 2,
                      style: TextStyle(color: Colors.grey),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              width: 20,
            ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  IconButton(
                    onPressed: () {
                      note.delete();
                    },
                    icon: Icon(
                      Icons.delete,
                      size: 40,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(note.date),
                  SizedBox(
                    height: 10,
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
