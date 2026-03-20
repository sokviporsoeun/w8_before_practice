import 'package:blabla/model/ride_pref/ride_pref.dart';

import 'ride_preference_repository.dart';

class RidePreferenceRepositoryMock implements RidePreferenceRepository{
  final List<RidePreference> _preferenceHistory = [];

  @override
  void addPreferenceToHistory(RidePreference preference) {
     _preferenceHistory.add(preference);
  }

  @override
  List<RidePreference> getHistoryPreference() {
    return _preferenceHistory;
  }
  
}