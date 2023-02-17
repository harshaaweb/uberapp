import 'package:flutter/material.dart';

class IconBox1 extends StatefulWidget {
  final List<Widget>? children;
  final double? boxWidth;
  final double? boxHeight;
  final List<BoxShadow>? shadow;
  final bool haveShadow;
  final Color? bgColor;
  final BorderRadius? radius;
  const IconBox1(
      {super.key,
      this.children,
      this.boxWidth,
      this.boxHeight,
      this.shadow,
      this.bgColor,
      this.radius,
      this.haveShadow = true});

  @override
  State<IconBox1> createState() => _IconBox1State();
}

class _IconBox1State extends State<IconBox1> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          color: widget.bgColor ?? Colors.white,
          borderRadius: widget.radius ?? BorderRadius.circular(5),
          boxShadow: widget.shadow ??
              [
                if (widget.haveShadow)
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 2),
                  ),
              ]),
      width: widget.boxWidth ?? MediaQuery.of(context).size.width * 0.23,
      height: widget.boxHeight ?? 100,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: widget.children ?? []),
    );
  }
}
