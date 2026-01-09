import 'package:flutter/material.dart';
import 'package:store_app/widgets/notes_item.dart';

class note_list_view extends StatelessWidget {
  const note_list_view({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: EdgeInsets.only(top: 2),
      itemCount: 4,
      itemBuilder: (context, index) {
        return notes_Item();
      },
    );
  }
}
