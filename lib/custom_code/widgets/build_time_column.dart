// Automatic FlutterFlow imports
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your widget name, define your parameter, and then add the
// boilerplate code using the green button on the right!
// hi

var kFirstColumnIndexHeight;
var kColumnLengthCnt;
var kBoxSizeHeight;

Expanded BuildTimeColumn() {
  return Expanded(
    child: Column(
      children: [
        SizedBox(
          height: kFirstColumnIndexHeight,
        ),
        ...List.generate(
          kColumnLengthCnt.toInt(),
          (index) {
            if (index % 2 == 0) {
              return const Divider(
                color: Colors.grey,
                height: 0,
              );
            }
            return SizedBox(
              height: kBoxSizeHeight,
              child: Center(child: Text('${index ~/ 2 + 9}')),
            );
          },
        ),
      ],
    ),
  );
}
