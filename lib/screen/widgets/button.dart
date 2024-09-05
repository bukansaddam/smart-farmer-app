import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.function,
    required this.text,
    this.width = double.infinity,
    this.height = 50,
    this.radius = 10,
    this.gradient = true,
  });

  final void Function() function;
  final String text;
  final double width;
  final double height;
  final double radius;
  final bool gradient;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: height,
      decoration: BoxDecoration(
        color: const Color(0xFF4E6B3E),
        borderRadius: BorderRadius.circular(radius),
      ),
      child: ElevatedButton(
        onPressed: () {
          function();
        },
        style: ElevatedButton.styleFrom(
          minimumSize: const Size(double.infinity, 50),
          backgroundColor: Colors.transparent,
          shadowColor: Colors.transparent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(radius),
          ),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: gradient ? Colors.white : const Color(0xFF354A98),
            fontSize: height * 0.4,
          ),
        ),
      ),
    );
  }
}
