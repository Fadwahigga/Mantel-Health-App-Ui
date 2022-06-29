// ignore_for_file: file_names, camel_case_types, must_be_immutable, prefer_typing_uninitialized_variables, prefer_const_constructors

import 'package:flutter/material.dart';

class exercisesTile extends StatelessWidget {
  exercisesTile(
      {Key? key,
      @required this.icon,
      @required this.exercisesName,
      @required this.numberOfExercises,
      @required this.color})
      : super(key: key);
  var icon;
  final String? exercisesName;
  final String? numberOfExercises;
  final color;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(12)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(children: [
              Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(16), color: color),
                  child: Icon(
                    icon,
                    color: Colors.white,
                  )),
              const SizedBox(
                width: 12,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    exercisesName!,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    "${numberOfExercises!} Exercises",
                    style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.grey),
                  )
                ],
              ),
            ]),
            const Icon(Icons.more_horiz)
          ],
        ),
      ),
    );
  }
}
