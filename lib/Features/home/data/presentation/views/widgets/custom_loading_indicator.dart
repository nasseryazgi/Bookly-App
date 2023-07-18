import 'package:flutter/widgets.dart';

import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomLoadingIndicator extends StatelessWidget {
  const CustomLoadingIndicator({
    super.key,
  });
  Widget build(BuildContext context) {
    // TODO: implement build
    return const Center(
      child: CircularProgressIndicator(),
    );
  }
}
