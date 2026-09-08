import 'package:flutter/material.dart';
import '../../../common/widgets/custom_shape/containers/EPrimary_Header_Container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [EPrimary_Header_Container(child: Container())],
        ),
      ),
    );
  }
}