import 'package:flutter/material.dart';

class StaggeredListItem extends StatefulWidget {
  final Widget child;
  final int index;
  final Offset beginOffset;
  final int staggerDelayMs;
  final Duration slideDuration;
  final Duration fadeDuration;
  final Curve curve;

  const StaggeredListItem({
    super.key,
    required this.child,
    required this.index,
    this.beginOffset = const Offset(0, 0.1),
    this.staggerDelayMs = 50,
    this.slideDuration = const Duration(milliseconds: 300),
    this.fadeDuration = const Duration(milliseconds: 400),
    this.curve = Curves.easeOut,
  });

  @override
  State<StaggeredListItem> createState() => _StaggeredListItemState();
}

class _StaggeredListItemState extends State<StaggeredListItem> {
  bool _isVisible = false;

  @override
  void initState() {
    super.initState();

    Future.delayed(
      Duration(milliseconds: widget.index * widget.staggerDelayMs),
      () {
        if (!mounted) return;
        setState(() => _isVisible = true);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedSlide(
      offset: _isVisible ? Offset.zero : widget.beginOffset,
      duration: widget.slideDuration,
      curve: widget.curve,
      child: AnimatedOpacity(
        opacity: _isVisible ? 1 : 0,
        duration: widget.fadeDuration,
        child: widget.child,
      ),
    );
  }
}
