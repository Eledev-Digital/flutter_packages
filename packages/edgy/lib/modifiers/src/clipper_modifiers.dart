part of modifiers;

extension ClipperModifiers<T extends Widget> on T {
  /// clips a widget with a given [borderRadius]
  ///
  /// default [borderRadius] is 0
  ClipPath clipRect({double borderRadius = 0}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: RectClipper(borderRadius: borderRadius),
      );

  /// clip with a custom clipper.
  ClipPath clipCustom({CustomClipper<Path> clipper}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: clipper,
      );

  /// clips a widget with a given [radius]
  ///
  /// default [radius] is 20
  ClipPath clipCircle({double radius = 20}) => ClipPath(
        child: this,
        clipBehavior: Clip.antiAlias,
        clipper: CircleClipper(radius: radius),
      );

  /// clips a widget and paints a shodow.
  ///
  ///  /// default [borderRadius] is 0
  ShadowClipper shadowRectClipper({
    Shadow shadow,
    double borderRadius = 0,
  }) =>
      ShadowClipper(
        child: this,
        clipper: RectClipper(borderRadius: borderRadius),
        shadow: shadow,
      );

  /// clips a widget and paints a shodow.
  ///
  ///  /// default [radius] is 25
  ShadowClipper shadowCircleClipper({
    Shadow shadow,
    double radius = 25,
  }) =>
      ShadowClipper(
        child: this,
        clipper: CircleClipper(radius: radius),
        shadow: shadow,
      );
}
