import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class FadeAnimation extends StatelessWidget {
  late final double delay;
  late final Widget child;
  FadeAnimation(this.delay, this.child);

  @override
  Widget build(BuildContext context) {
    final tween = MultiTrackTween([
      Track('opacity')
          .add(const Duration(milliseconds: 500), Tween(begin: 0.0, end: 1.0)),
      Track('translateX').add(
          const Duration(milliseconds: 500), Tween(begin: 120.0, end: 0.0),
          curve: Curves.easeOut),
    ]);
    return Container();
  }
}
