import 'package:flutter/foundation.dart';
import '../../data/repositories/ride_preference/ride_preference_repository.dart';
import '../../model/ride_pref/ride_pref.dart';

class RidePreferenceState extends ChangeNotifier {
  final RidePreferenceRepository _repository;

  RidePreference? currentPreference;
  List<RidePreference> history = [];

  RidePreferenceState(this._repository) {
    history = _repository.getHistoryPreference();
  }

  void selectPreference(RidePreference newPreference) {
    if (currentPreference == null || currentPreference != newPreference) {
      currentPreference = newPreference;

      _repository.addPreferenceToHistory(newPreference);
      history = _repository.getHistoryPreference();

      notifyListeners();
    }
  }
}