import 'package:flutter/material.dart';

class ErrorWiget extends StatelessWidget {
  const ErrorWiget(
    this.errorText, {
    Key? key,
  }) : super(key: key);
  final String errorText;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(errorText),
    );
  }
}