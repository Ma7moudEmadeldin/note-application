import 'package:flutter/material.dart';
import 'package:store_app/consts.dart';

class textField extends StatelessWidget {
  const textField(
      {super.key, this.maxLines, required this.hintText, this.onSave});
  final int? maxLines;
  final String hintText;
  final void Function(String?)? onSave;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(10),
      child: Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
        child: Center(
          child: Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: Column(
              children: [
                TextFormField(
                  onSaved: onSave,
                  validator: (value) {
                    if (value?.isEmpty ?? true) {
                      return 'field is required';
                    } else {
                      return null;
                    }
                  },
                  maxLines: maxLines,
                  cursorColor: kPrimaryColor,
                  onChanged: (value) {},
                  decoration: InputDecoration(
                    border: InputBorder.none,
                    hintText: hintText,
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 22),
                    enabledBorder: enabled_Border(color: kPrimaryColor),
                    focusedBorder: focused_Border(color: kPrimaryColor),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  OutlineInputBorder focused_Border({dynamic color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(
          color: color ?? Colors.white,
        ),
        borderRadius: BorderRadius.circular(10));
  }

  OutlineInputBorder enabled_Border({dynamic color}) {
    return OutlineInputBorder(
        borderSide: BorderSide(color: color ?? Colors.white),
        borderRadius: BorderRadius.circular(10));
  }
}
