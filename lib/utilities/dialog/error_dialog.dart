import 'package:carpooling_app/utilities/dialog/generic_dialog.dart';
import 'package:flutter/material.dart';

Future<void> ShowErrorDialog(
  BuildContext context,
  String text,
) {
  return showGenericDialog(
    context: context,
    title: "An error Ocuured",
    content: text,
    optionBuilder: () => {
      'OK': null,
    },
  );
}
