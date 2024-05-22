import 'package:flutter/material.dart';

class BuildButton extends StatelessWidget {
  final String text;
  final bool isLogin;
  final VoidCallback onPressed;
  final bool? secondary;

  const BuildButton({
    super.key,
    required this.text,
    required this.isLogin,
    required this.onPressed,
    this.secondary,
  });

  @override
  Widget build(BuildContext context) {
    Color colorText = isLogin ? Colors.white : Colors.black38;
    Color colorDecoration =
        isLogin ? Colors.teal : Colors.transparent;

    Color colorDecoration2 =
        isLogin ? Colors.green : Colors.transparent;

    BorderRadius borderRadius = const BorderRadius.only(
      bottomLeft: Radius.circular(20.0),
      topRight: Radius.circular(40.0),
    );

    BorderRadius borderRadius2 = const BorderRadius.only(
      bottomRight: Radius.circular(20.0),
      topLeft: Radius.circular(40.0),
    );

    return Container(
      width: 150.0,
      decoration: BoxDecoration(
        borderRadius: secondary == null || secondary == false
            ? borderRadius
            : borderRadius2,
        color: secondary == null || secondary == false
            ? colorDecoration
            : colorDecoration2,
      ),
      child: TextButton(
        onPressed: () {
          onPressed();
          //handleChangeIsLoading(true);
        },
        child: Text(
          text,
          style: TextStyle(
            color: colorText,
          ),
        ),
      ),
    );
  }
}
