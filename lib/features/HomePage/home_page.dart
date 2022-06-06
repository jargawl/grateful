import 'package:flutter/material.dart';
import 'package:thankfulness/App/core/responsive_layout.dart';
import 'package:thankfulness/features/HomePage/narrow_home_page.dart';
import 'package:thankfulness/features/HomePage/ultra_wide_home_page.dart';
import 'package:thankfulness/features/HomePage/wide_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const ResponsiveLayout(
      ultrawide: UltraWideHomePage(),
      wide: WideHomePage(),
      narrow: NarrowHomePage(),
    );
  }
}
