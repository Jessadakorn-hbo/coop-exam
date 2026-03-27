import 'package:go_router/go_router.dart';
import 'screens/login_screen.dart';
import 'screens/vehicle_list_screen.dart';
import 'screens/trip_tracker_screen.dart';
import 'screens/dashboard_screen.dart';

final GoRouter router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => LoginScreen(),
    ),
    GoRoute(
      path: '/vehicles',
      builder: (context, state) => VehicleListScreen(),
    ),
    GoRoute(
      path: '/trips',
      builder: (context, state) => TripTrackerScreen(),
    ),
    GoRoute(
      path: '/dashboard',
      builder: (context, state) => DashboardScreen(),
    ),
  ],
);