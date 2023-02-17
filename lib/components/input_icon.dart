import 'package:flutter/material.dart';

class InputIcon extends StatefulWidget {
  final bool endIcon;
  final Icon? icon;
  final TextEditingController? textController;
  final String? placeholder;
  final EdgeInsets? padding;
  final TextStyle? hintStyle;
  const InputIcon({
    super.key,
    this.endIcon = false,
    this.icon,
    this.textController,
    this.placeholder = "Enter Mobile Number",
    this.padding,
    this.hintStyle,
  });

  @override
  State<InputIcon> createState() => _InputIconState();
}

class _InputIconState extends State<InputIcon> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: widget.padding ??
          const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          if (!widget.endIcon && widget.icon != null)
            Container(
              padding: const EdgeInsets.only(right: 10),
              child: widget.icon,
            ),
          Expanded(
            child: TextField(
              controller: widget.textController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: widget.placeholder,
                hintStyle: widget.hintStyle ?? const TextStyle(),
              ),
              style: widget.hintStyle ?? const TextStyle(),
            ),
          ),
          if (widget.endIcon && widget.icon != null)
            Container(
              padding: const EdgeInsets.only(left: 10),
              child: widget.icon,
            )
        ],
      ),
    );
  }
}
