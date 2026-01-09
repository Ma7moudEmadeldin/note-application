import 'package:flutter/material.dart';

class typing_box_widget extends StatelessWidget {
  typing_box_widget(
      {super.key, required this.onsubmitted, required this.controller});
  Function(String) onsubmitted;
  TextEditingController controller;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 15),
      color: Colors.amber,
      child: Row(
        children: [
          Expanded(
            child: TextField(
              controller: controller,
              onSubmitted: onsubmitted,
              decoration: const InputDecoration(
                hintText: "Type a message...",
                border: InputBorder.none,
              ),
            ),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.send))
        ],
      ),
    );
  }
}
