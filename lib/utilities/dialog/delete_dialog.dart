import 'package:carpooling_app/utilities/dialog/generic_dialog.dart';
import 'package:flutter/cupertino.dart';

Future<bool> showDeleteDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Delete',
    content: "Are you sure you want to Delete item?",
    optionBuilder: () => {
      'Cancel': false,
      'Yes': true,  
    },
  ).then((value) => value ?? false);
}
