import 'package:flutter/material.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: Colors.grey,
      actions: [
        Container(
          margin: EdgeInsets.all(6),
          decoration: BoxDecoration(
              color: const Color.fromARGB(255, 78, 78, 78),
              borderRadius: BorderRadius.circular(10)),
          child: Center(
              child: IconButton(onPressed: () {}, icon: Icon(Icons.search))),
        )
      ],
      centerTitle: true,
      title: Text(
        'Notes',
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
