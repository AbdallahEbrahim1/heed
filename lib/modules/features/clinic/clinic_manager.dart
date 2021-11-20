import 'package:flutter_apppp11/modules/features/clinic/clinic_model.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';
import 'package:rxdart/rxdart.dart';

class ClinicManager {
  final BehaviorSubject<ClinicModel> _homeSubject =
      BehaviorSubject<ClinicModel>();

  Stream<ClinicModel> get home$ => _homeSubject.stream;

  ClinicManager() {
    Stream.fromFuture(
      DioHelper.getData(url: "clinic/25"),
    ).listen((result) {
      if (result.data != null) {
        ClinicModel clinic = ClinicModel.fromJson(result.data);
        _homeSubject.add(clinic);
      }
    });
  }

  void refreshClinicsManager() {
    Stream.fromFuture(
      DioHelper.getData(url: "clinic/25"),
    ).listen((result) {
      if (result.data != null) {
        _homeSubject.add(
          ClinicModel.fromJson(result.data),
        );
      }
    });
  }
}
