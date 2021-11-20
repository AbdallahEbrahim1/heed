import 'package:flutter_apppp11/manager.dart';
import 'package:flutter_apppp11/modules/features/category_details/category_details_manager.dart';
import 'package:flutter_apppp11/modules/features/clinic/clinic_manager.dart';
import 'package:flutter_apppp11/modules/features/clinics/clinics_manager.dart';
import 'package:flutter_apppp11/modules/features/home/home_manager.dart';
import 'package:get_it/get_it.dart';

final GetIt locator = GetIt.instance;

Future<void> setupLocator() async {
  // Setup PrefsService.
  // var instance = await PrefsService.getInstance();
  // locator.registerSingleton<PrefsService>(instance!);

  /// Manager
  locator.registerLazySingleton<Manager>(() => Manager());

  ///HomeBloc
  locator.registerLazySingleton<HomeBloc>(() => HomeBloc());

  ///CategoryDetailsManager
  locator.registerLazySingleton<CategoryDetailsManager>(
      () => CategoryDetailsManager());

  ///ClinicsManager
  locator.registerLazySingleton<ClinicsManager>(() => ClinicsManager());

  ///ClinicManager
  locator.registerLazySingleton<ClinicManager>(() => ClinicManager());
}
