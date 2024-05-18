// import 'package:flutter/foundation.dart';
// import 'package:flutter/widgets.dart';
import 'package:get_storage/get_storage.dart';

class OnboardingService {
  static const String _firstLaunchKey = 'first_launch';
  final GetStorage _storage = GetStorage();

  bool isFirstLaunch() {
    return _storage.read(_firstLaunchKey) ?? true;
  }

  void completeOnboarding() {
    _storage.write(_firstLaunchKey, false);
  }
}