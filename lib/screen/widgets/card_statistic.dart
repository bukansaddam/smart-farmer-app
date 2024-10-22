import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardStatistic extends StatelessWidget {
  const CardStatistic({
    super.key,
    required this.title,
    this.subtitle = '',
    required this.totalData,
    this.color = Colors.white,
    required this.icon,
    this.right = 0,
    this.bottom = 0,
  });

  final String title;
  final String subtitle;
  final String totalData;
  final Color color;
  final String icon;
  final double right;
  final double bottom;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: double.infinity,
        decoration: ShapeDecoration(
          color: color,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        child: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        totalData,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 32,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Text(
                          subtitle,
                          style: const TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Positioned(
              right: right,
              bottom: bottom,
              child: Opacity(
                opacity: 0.50,
                child: SvgPicture.asset(
                  'assets/icons/$icon',
                  width: 60,
                  colorFilter:
                      const ColorFilter.mode(Colors.white, BlendMode.srcIn),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
