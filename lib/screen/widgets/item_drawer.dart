import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ItemDrawer extends StatelessWidget {
  final IconData? icon;
  final String? iconSvg;
  final String? title;
  final bool selected;
  final VoidCallback onTap;

  const ItemDrawer(
      {super.key,
      this.icon,
      this.iconSvg,
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
          child: iconSvg != null
              ? SvgPicture.asset(
                  iconSvg!,
                  colorFilter: ColorFilter.mode(
                      selected ? Colors.green : Colors.black, BlendMode.srcIn),
                  width: 30,
                )
              : Icon(
                  icon,
                  color: selected ? Colors.green : Colors.black,
                ),
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
