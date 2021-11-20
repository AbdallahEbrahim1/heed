import 'package:flutter/foundation.dart';
import 'package:flutter_apppp11/modules/features/category_details/category_details_model.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';
import 'package:rxdart/rxdart.dart';

class CategoryDetailsManager {
  final BehaviorSubject<CategoryDetailsModel> _categoryDetailsSubject =
      BehaviorSubject<CategoryDetailsModel>();

  // Stream<CategoryDetailsModel> get categoryDetails$ => _categoryDetailsSubject.stream;

  Stream<CategoryDetailsModel> categoryDetails$({@required int categoryId}) {
    Stream.fromFuture(
      DioHelper.getData(
        url: "category/$categoryId",
      ),
    ).listen(
      (result) {
        if (result.data != null) {
          _categoryDetailsSubject.add(
            CategoryDetailsModel.fromJson(result.data),
          );
          // _homeSubject.add(result.data);
        }
      },
    );

    return _categoryDetailsSubject.stream;
  }
}
