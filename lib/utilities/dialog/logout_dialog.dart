import 'package:carpooling_app/utilities/dialog/generic_dialog.dart';
import 'package:flutter/cupertino.dart';

Future<bool> showLogoutDialog(BuildContext context) {
  return showGenericDialog(
    context: context,
    title: 'Log out',
    content: "Are you sure you want to Log out?",
    optionBuilder: () => {
      'Cancel': false,
      'Log Out': true,
    },
  ).then((value) => value ?? false);
}
