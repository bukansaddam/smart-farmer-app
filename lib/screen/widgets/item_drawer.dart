import 'package:flutter/material.dart';

class ItemDrawer extends StatelessWidget {
  final IconData icon;
  final String? title;
  final bool selected;
  final VoidCallback onTap;

  const ItemDrawer(
      {super.key,
      required this.icon,
      this.title,
      required this.selected,
      required this.onTap});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: ListTile(
        contentPadding: EdgeInsets.zero,
        leading: SizedBox(
          width: 50,
          child: Icon(icon),
        ),
        title: title != null
            ? Text(
                title!,
                style: TextStyle(
                  color: selected ? Colors.green : Colors.black,
                ),
              )
            : null,
        selected: selected,
        selectedTileColor: const Color.fromARGB(170, 200, 230, 201),
        selectedColor: Colors.green,
        onTap: onTap,
      ),
    );
  }
}
