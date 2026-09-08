import 'package:flutter/material.dart';
import 'package:flutter_catelog_page/common/widgets/AppBar/appbar.dart';
import 'package:flutter_catelog_page/util/constants/text_strings.dart';
import '../../../common/widgets/custom_shape/containers/EPrimary_Header_Container.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [EPrimary_Header_Container(child: Column(
            children: [
              EAppBar(showBackArrow: false,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(ETexts.homeAppbarTitle,)
                ],
              ),
              )
            ],
              )
            )
          ],
        ),
      ),
    );
  }
}