import 'package:mobx/mobx.dart';

import '../../core/presentation/navigation/navigator_service.dart';

part 'splash_store.g.dart';

class SplashStore = SplashStoreBase with _$SplashStore;

abstract class SplashStoreBase with Store {
  final NavigatorService _navigatorService;

  SplashStoreBase({required NavigatorService navigatorService})
      : _navigatorService = navigatorService;

  @observable
  bool isLoading = false;

  @action
  Future<void> dismiss() async {
    await Future.delayed(const Duration(seconds: 3));
    _navigatorService.navigate('/login/');
  }
}
