import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:intl/intl.dart';

class CardDashboard extends StatelessWidget {
  const CardDashboard({
    super.key,
    required this.title,
    required this.totalData,
    required this.icon,
    required this.onTap,
    this.iconColor = Colors.black,
    this.textColor = Colors.black,
    this.right = -15,
    this.bottom = -10,
  });

  final String title;
  final String totalData;
  final String icon;
  final Color iconColor;
  final Color textColor;
  final double right;
  final double bottom;
  final Function() onTap;

  DateTime getThirtyDaysAgo() {
    final DateTime now = DateTime.now();
    final DateTime thirtyDaysAgo = now.subtract(const Duration(days: 30));
    return thirtyDaysAgo;
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: const [
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 11,
              offset: Offset(3, 4),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x0A000000),
              blurRadius: 20,
              offset: Offset(13, 15),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x05000000),
              blurRadius: 27,
              offset: Offset(29, 34),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x02000000),
              blurRadius: 31,
              offset: Offset(51, 60),
              spreadRadius: 0,
            ),
            BoxShadow(
              color: Color(0x00000000),
              blurRadius: 34,
              offset: Offset(80, 93),
              spreadRadius: 0,
            )
          ],
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                      '${getThirtyDaysAgo().day} ${DateFormat('MMM').format(getThirtyDaysAgo())} - Sekarang'),
                  const SizedBox(height: 4),
                  Text(
                    totalData,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: textColor,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: right,
              bottom: bottom,
              child: SvgPicture.asset(
                'assets/icons/$icon',
                colorFilter: ColorFilter.mode(iconColor, BlendMode.srcIn),
                width: 100,
                height: 100,
              ),
            )
          ],
        ),
      ),
    );
  }
}
