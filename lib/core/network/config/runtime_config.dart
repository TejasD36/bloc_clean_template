class RuntimeConfig {
  const RuntimeConfig._();

  static String geminiApiKey = '';

  static String get geminiFileSearchStore =>
      const String.fromEnvironment('geminiFileSearchStore', defaultValue: '');
}
