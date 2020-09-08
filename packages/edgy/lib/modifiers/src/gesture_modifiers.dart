part of modifiers;

extension GesturetModifiers<T extends Widget> on T {
  /// Simple onTap gesture
  ///
  /// Ussage: [Container().onTap(() => print('Hello World'))]
  GestureDetector onTap([Function function]) => GestureDetector(
        child: this,
        onTap: function,
      );
}
