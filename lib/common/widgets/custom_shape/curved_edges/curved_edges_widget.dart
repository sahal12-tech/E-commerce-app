import 'package:flutter/material.dart';

import 'curved_edges.dart';

class ECurved_Edge_Widget extends StatelessWidget {
  const ECurved_Edge_Widget({
    super.key,
    this.child
  });

  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: ECustomCurvedEdges(),
      child: child,
    );
  }
}