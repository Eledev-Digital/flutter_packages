part of modifiers;

extension CommonModifiers<T extends Widget> on T {
  /// adds [Padding] to a given widget.
  Padding padding([EdgeInsets padding]) => Padding(
        child: this,
        padding: padding ?? EdgeInsets.all(8.0),
      );

  /// Uses a [SizedBox] to limit a widgets dimensions.
  SizedBox frame({double height, double width}) => SizedBox(
        child: this,
        height: height,
        width: width,
      );

  /// Restricts a widget to a given [AspectRatio]
  AspectRatio aspectRatio([double aspectRatio]) => AspectRatio(
        child: this,
        aspectRatio: aspectRatio ?? 1,
      );

  /// Expands a widget to fill the maximum amount of space.
  /// [flex] is used when there are multiple [Expanded] widgets.
  Expanded expanded([int flex]) => Expanded(
        child: this,
        flex: flex,
      );

  /// Sets the [Opacity]
  Opacity opacity(double opacity) => Opacity(
        child: this,
        opacity: opacity,
      );

  /// Adds a [DecoratedBox] with a background color.
  DecoratedBox backgroundColor(Color color) => DecoratedBox(
        child: this,
        decoration: BoxDecoration(color: color),
      );
}
