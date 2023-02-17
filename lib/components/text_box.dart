import 'package:flutter/material.dart';

class TextIconBox extends StatefulWidget {
  final Widget? centerIcon;
  final String text;
  const TextIconBox({super.key, this.centerIcon, this.text = ""});

  @override
  State<TextIconBox> createState() => _TextIconBoxState();
}

class _TextIconBoxState extends State<TextIconBox> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.2,
      height: 150,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            height: 80,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 2,
                    offset: const Offset(1, 2),
                  ),
                ]),
            child: Center(
              child: widget.centerIcon ?? const SizedBox(),
            ),
          ),
          Text(
            widget.text,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
