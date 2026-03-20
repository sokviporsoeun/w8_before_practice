import '../../../model/ride_pref/ride_pref.dart';

abstract class RidePreferenceRepository {
  void addPreferenceToHistory(RidePreference preference);

  List<RidePreference> getHistoryPreference();
}