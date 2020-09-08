part of modifiers;

extension PositionModifiers<T extends Widget> on T {
  /// Aligns a widget. Default set to [Alignment.center]
  Align align([AlignmentGeometry alignment]) => Align(
        child: this,
        alignment: alignment ?? Alignment.center,
      );

  // Center a widget.
  Center center({double widthFactor, double heightFactor}) => Center(
        child: this,
        widthFactor: widthFactor,
        heightFactor: heightFactor,
      );

  ///
  /// Two properties must not be null.
  Positioned position({double top, double bottom, double left, double right}) =>
      Positioned(
        child: this,
        top: top,
        bottom: bottom,
        left: left,
        right: right,
      );
}
