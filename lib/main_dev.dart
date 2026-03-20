
import 'package:blabla/ui/states/ride_preference_state.dart';
import 'package:provider/provider.dart';
import 'data/repositories/location/location_repository.dart';
import 'data/repositories/location/location_repository_mock.dart';
import 'data/repositories/ride/ride_repository.dart';
import 'data/repositories/ride/ride_repository_mock.dart';
import 'data/repositories/ride_preference/ride_preference_repository.dart';
import 'data/repositories/ride_preference/ride_preference_repository_mock.dart';
import 'main_common.dart';

List<InheritedProvider> get devProviders {
  return [
    // 1 - Inject the location repository
    Provider<LocationRepository>(create: (_) => LocationRepositoryMock()),
    // 2 - Inject the ride repository
    Provider<RideRepository>(create: (_) => RideRepositoryMock()),
    // 2 - Inject the ride repository
    Provider<RidePreferenceRepository>(create: (_) => RidePreferenceRepositoryMock()),
    // 4 - Inject the ride preference state
    ChangeNotifierProvider<RidePreferenceState>(
      create: (context) => RidePreferenceState(
        context.read<RidePreferenceRepository>(),
      ),
    ),
  ];
}
void main() {
  mainCommon(devProviders);
}