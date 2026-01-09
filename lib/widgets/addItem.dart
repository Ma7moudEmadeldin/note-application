import 'package:flutter/material.dart';

class addItem extends StatelessWidget {
  const addItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
            context: context,
            builder: (context) {
              return Container(
                height: 300,
                child: Center(
                  child: Text('data'),
                ),
              );
            },
          );
        },
        child: Icon(Icons.add));
  }
}
