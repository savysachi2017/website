import 'package:flutter/material.dart';
import 'package:se_website/platform_define.dart';



late Size mq ;

void main() {
  runApp(const SEWebsite());
}

class SEWebsite extends StatefulWidget {
  const SEWebsite({super.key});

  @override
  State<SEWebsite> createState() => _SEWebsiteState();
}

class _SEWebsiteState extends State<SEWebsite> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Savyasachi Engineering',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: PlatformDefine(),
    );
  }
}

