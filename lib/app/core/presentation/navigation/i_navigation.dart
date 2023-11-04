abstract class INavigation<T> {
  void pop();
  Future<T?> pushNamed(String routeName, {Object? arguments});
  Future<T?> pushReplacementNamed(String routeName, {Object? arguments});
  Future<T?> pushNamedAndRemoveUntil(String routeName, {Object? arguments});
  Future<T?> popAndPushNamed(String routeName, {Object? arguments});
  Future<T?> navigate(String routeName, {Object? arguments});
}
