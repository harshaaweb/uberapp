import 'package:flutter/material.dart';

class TextIconButton extends StatefulWidget {
  final bool endIcon;
  final Widget? icon;
  final String text;
  final TextStyle? textStyle;
  final Color? bgColor;
  final Function()? onPress;
  final EdgeInsets? padding;
  final double radius;

  const TextIconButton(
      {super.key,
      this.endIcon = false,
      this.icon,
      this.text = "",
      this.textStyle = const TextStyle(
        color: Colors.black,
        fontSize: 20,
      ),
      this.bgColor,
      this.onPress,
      this.padding,
      this.radius = 5});

  @override
  State<TextIconButton> createState() => _TextIconButtonState();
}

class _TextIconButtonState extends State<TextIconButton> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: widget.onPress,
      child: Container(
        padding: widget.padding ?? const EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          color: widget.bgColor ?? Colors.grey.shade200,
          borderRadius: BorderRadius.circular(widget.radius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (!widget.endIcon && widget.icon != null)
              Container(
                padding: const EdgeInsets.only(right: 10),
                child: widget.icon,
              ),
            Text(
              widget.text,
              style: widget.textStyle,
            ),
            if (widget.endIcon && widget.icon != null)
              Container(
                padding: const EdgeInsets.only(left: 10),
                child: widget.icon,
              )
          ],
        ),
      ),
    );
  }
}
