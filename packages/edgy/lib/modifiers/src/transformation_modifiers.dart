part of modifiers;

extension TransformatonModifiers<T extends Widget> on T {
  /// Rotates a widget by [angle] in degrees.
  Transform rotate(double angle) => Transform.rotate(
        child: this,
        angle: angle * pi / 180,
      );

  /// Moves a widget by [x] and [y] pixels.
  Transform translate({
    @required double x,
    @required double y,
    bool transformHitTests = true,
  }) =>
      Transform.translate(
        child: this,
        offset: Offset(x, y),
        transformHitTests: transformHitTests,
      );

  /// Scales a widget based on the [scale] and [origin]
  Transform scale({
    @required double scale,
    @required Offset origin,
    AlignmentGeometry alignment = Alignment.center,
    bool transformHitTests = true,
  }) =>
      Transform.scale(
        child: this,
        scale: scale,
        origin: origin,
        transformHitTests: transformHitTests,
      );
}
