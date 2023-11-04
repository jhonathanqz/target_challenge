class AppImages {
  static AppImages? _instance;
  AppImages._();
  static AppImages getInstance() {
    return _instance ?? AppImages._();
  }
}
