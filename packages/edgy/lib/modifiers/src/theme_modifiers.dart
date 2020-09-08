part of modifiers;

extension ThemeModifiers<T extends Widget> on T {
  /// Applies a [Theme] to a widget.
  Theme theme(ThemeData data, {bool isMaterial = true}) => Theme(
        child: this,
        data: data,
        isMaterialAppTheme: isMaterial,
      );

  /// applies a font [DefaultTextStyle] to a widget.
  DefaultTextStyle font({
    double size,
    FontWeight weight,
    Color color,
    String family,
    FontStyle fontStyle,
  }) =>
      DefaultTextStyle(
        child: this,
        style: TextStyle(
          color: color,
          fontWeight: weight,
          fontSize: size,
          fontFamily: family,
          fontStyle: fontStyle,
        ),
      );
}
