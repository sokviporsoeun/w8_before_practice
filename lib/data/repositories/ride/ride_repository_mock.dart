import '../../../model/ride/ride.dart';
import '../../dummy_data.dart';
import 'ride_repository.dart';

class RideRepositoryMock implements RideRepository{
  @override
  List<Ride> getAllRide() {
    return fakeRides;
  }
}