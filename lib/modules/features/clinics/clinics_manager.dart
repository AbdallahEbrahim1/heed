import 'package:flutter_apppp11/modules/features/clinics/clinics_model.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';
import 'package:rxdart/rxdart.dart';

class ClinicsManager {
  final BehaviorSubject<ClinicsModel> _homeSubject =
      BehaviorSubject<ClinicsModel>();

  Stream<ClinicsModel> get home$ => _homeSubject.stream;

  ClinicsManager() {
    Stream.fromFuture(
      DioHelper.getData(url: "clinics"),
    ).listen((result) {
      if (result.data != null) {
        ClinicsModel clinic = ClinicsModel.fromJson(result.data);
        _homeSubject.add(clinic);
      }
    });
  }

  void refreshClinicsManager() {
    Stream.fromFuture(
      DioHelper.getData(url: "clinics"),
    ).listen((result) {
      if (result.data != null) {
        _homeSubject.add(
          ClinicsModel.fromJson(result.data),
        );
      }
    });
  }
}
