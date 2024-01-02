import 'package:flutter/material.dart' ;
import 'package:responsive_builder/responsive_builder.dart';
import 'package:se_website/tablet.dart';

import 'desktop.dart';
import 'mobile.dart';


class PlatformDefine extends StatefulWidget {
  const PlatformDefine({super.key});

  @override
  State<PlatformDefine> createState() => _PlatformDefineState();
}

class _PlatformDefineState extends State<PlatformDefine> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ScreenTypeLayout.builder(
          mobile:(BuildContext context) => Mobile(),
          desktop: (BuildContext context) => Desktop(),
          tablet: (BuildContext context) => Tablet(),
        ),
      ),
    );
  }
}
