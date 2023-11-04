import 'package:flutter_modular/flutter_modular.dart';

import 'package:target_challenge/app/core/presentation/navigation/i_navigation.dart';

class NavigatorService<T> implements INavigation {
  @override
  void pop() => Modular.to.pop();

  @override
  Future<T?> popAndPushNamed(String routeName, {Object? arguments}) async =>
      Modular.to.popAndPushNamed(routeName, arguments: arguments);

  @override
  Future<T?> pushNamed(String routeName, {Object? arguments}) async =>
      Modular.to.pushNamed(routeName, arguments: arguments);

  @override
  Future<T?> pushNamedAndRemoveUntil(String routeName,
          {Object? arguments}) async =>
      Modular.to.pushNamedAndRemoveUntil(routeName, (_) => false,
          arguments: arguments);

  @override
  Future<T?> pushReplacementNamed(String routeName,
          {Object? arguments}) async =>
      Modular.to.pushReplacementNamed(routeName, arguments: arguments);

  @override
  Future navigate(String routeName, {Object? arguments}) async =>
      Modular.to.navigate(routeName, arguments: arguments);
}
