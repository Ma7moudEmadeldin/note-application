import 'package:flutter/material.dart';

class notes_Item extends StatelessWidget {
  const notes_Item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 99, 74, 1),
          borderRadius: BorderRadius.circular(10)),
      height: 250,
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Flutter Tipss',
                  style: TextStyle(fontSize: 38),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: EdgeInsetsGeometry.only(left: 10),
                  child: Text(
                    'build your career with mahmoudbuild your career with mahmoudbuild your career with mahmoud',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(color: Colors.grey),
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 40,
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 1,
                ),
                IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.delete,
                    size: 40,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Text('date : 12:22:01'),
                SizedBox(
                  height: 10,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
