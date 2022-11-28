class AllowedAgeException implements Exception {
  final String _module;

  AllowedAgeException(
    this._module,
  );

  String errorMessage() => 'Unexpected age found on $_module';
}
