// ignore_for_file: prefer_const_constructors, camel_case_types, prefer_const_literals_to_create_immutables, prefer_const_constructors_in_immutables, non_constant_identifier_names

import 'package:flutter/material.dart';

class emoji extends StatelessWidget {
  emoji({Key? key, @required this.emoji_icon}) : super(key: key);
  final String? emoji_icon;

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.blue[600], borderRadius: BorderRadius.circular(12)),
        child: Text(
          emoji_icon!,
          style: TextStyle(color: Colors.white, fontSize: 28),
        ));
  }
}
