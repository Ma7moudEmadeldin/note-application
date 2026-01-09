import 'package:flutter/material.dart';
import 'package:store_app/consts.dart';

class customAppBar extends StatelessWidget {
  const customAppBar({super.key, required this.title, required this.icon});
  final String title;
  final Icon icon;
  @override
  Widget build(BuildContext context) {
    return AppBar(
      shadowColor: kPrimaryColor,
      actions: [
        Container(
          margin: EdgeInsets.all(10),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
          child: Center(child: IconButton(onPressed: () {}, icon: icon)),
        )
      ],
      centerTitle: true,
      title: Text(
        title,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 28),
      ),
    );
  }
}
