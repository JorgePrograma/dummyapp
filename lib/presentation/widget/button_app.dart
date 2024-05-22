import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ButtonApp extends StatefulWidget {
  final Future<void> Function() onPressed;
  final String text;
  final Color? colorbg;
  final Color? colortext;

  const ButtonApp({
    super.key,
    required this.onPressed,
    required this.text,
    this.colorbg,
    this.colortext,
  });

  @override
  _ButtonAppState createState() => _ButtonAppState();
}

class _ButtonAppState extends State<ButtonApp> {
  bool _isLoading = false;
  bool _isSucces = false;
  bool _isError = false;
  late RiveAnimationController _controllerAnimation;

  @override
  void initState() {
    _controllerAnimation = SimpleAnimation('');
    super.initState();
  }

  Future<void> _handlePress() async {
    setState(() {
      _isLoading = true;
    });

    try {
      await widget.onPressed();
      setState(() {
        _isSucces = true;
      });
    } catch (_) {
      setState(() {
        _isError = true;
      });
    } finally {
      setState(() {
        _isLoading = false;
      });
    }

    await Future.delayed(const Duration(seconds: 1));
    setState(() {
      _isLoading = false;
      _isError = false;
      _isSucces = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: widget.colorbg ?? Colors.orange,
      ),
      onPressed: () {},
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: widget.colortext ?? Colors.white,
            ),
          ),
          const SizedBox(width: 10.0),
          const Icon(Icons.local_dining)
        ],
      ),
    );
  }
}
