import 'package:flutter/widgets.dart';

import '../../../../model/ride_pref/ride_pref.dart';
import '../../../states/ride_preference_state.dart';

class HomeModel extends ChangeNotifier{
  final RidePreferenceState ridePreferenceState;

  HomeModel({required this.ridePreferenceState}){
    ridePreferenceState.addListener(notifyListeners);
  }

  @override
  void dispose() {
    ridePreferenceState.removeListener(notifyListeners);
    super.dispose();
  }

  RidePreference? get currentPreference =>
      ridePreferenceState.currentPreference;

  List<RidePreference> getHistoryPreference(){
    return ridePreferenceState.history;
  }

  void onRidePrefSelected(RidePreference preference){
    ridePreferenceState.selectPreference(preference);
  }
}