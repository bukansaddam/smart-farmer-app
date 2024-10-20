import 'package:flutter/material.dart';

class MyAlertDialog extends StatelessWidget {
  const MyAlertDialog(
      {super.key,
      required this.title,
      required this.description,
      required this.msgAccept,
      required this.onAccept,
      required this.msgCancel,
      required this.onCancel});

  final String title;
  final String description;
  final String msgAccept;
  final Function() onAccept;
  final String msgCancel;
  final Function() onCancel;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(description),
      actions: [
        TextButton(onPressed: onCancel, child: Text(msgCancel)),
        TextButton(
          onPressed: onAccept,
          child: Text(msgAccept),
        )
      ],
    );
  }
}
