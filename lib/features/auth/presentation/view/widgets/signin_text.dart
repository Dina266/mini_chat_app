import 'package:flutter/material.dart';

import '../../../../../core/themes/styles.dart';

class TextTitle extends StatelessWidget {
  const TextTitle({super.key, required this.title, });
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Styles.textStyle24,
    );
  }
}