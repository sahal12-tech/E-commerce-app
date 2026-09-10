import 'package:flutter/cupertino.dart';

import '../../../../util/constants/colors.dart';
import '../curved_edges/curved_edges_widget.dart';
import 'circular_container.dart';

class EPrimary_Header_Container extends StatelessWidget {
  const EPrimary_Header_Container({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ECurved_Edge_Widget(
      child: Container(
        color: EColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              Positioned(
                top: -150,
                right: -250,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              Positioned(
                top: 100,
                right: -300,
                child: ECircularContainer(
                  backgroundColor: EColors.textWhite.withValues(alpha: 0.1),
                ),
              ),
              child,
            ],
          ),
        ),
      ),
    );
  }
}