import 'package:flutter_apppp11/modules/features/home/home_model.dart';
import 'package:flutter_apppp11/network/remote/dio_helper.dart';
import 'package:rxdart/rxdart.dart';

// class HomeSearchBloc {
//   final PublishSubject<String> _querySubject = PublishSubject<String>();
//   final BehaviorSubject<List<Categories>> _homeSearchSubject =
//       BehaviorSubject<List<Categories>>();
//   final PublishSubject<List<Categories>> _filteredHomeSubject =
//       PublishSubject<List<Categories>>();
//   Sink<List<Categories>> get inHome => _homeSearchSubject.sink;
//   Sink<String> get inQuery => _querySubject.sink;
//   Stream<String> get query$ => _querySubject.stream;
//   Stream<List<Categories>> get filteredHome$ => _filteredHomeSubject.stream;
//   Stream<List<Categories>> get allHome$ => _homeSearchSubject.stream;
//
//   HomeSearchBloc() {
//     _querySubject
//         .debounceTime(Duration(milliseconds: 500))
//         .switchMap((query) async* {
//       yield await SearchService.search(query);
//     }).listen((list) async {
//       _filteredHomeSubject.add(list);
//     });
//   }
//
//   dispose() {
//     _querySubject.close();
//     _homeSearchSubject.close();
//   }
// }
//
// class SearchService {
//   static Future<List<Categories>> search(String query) async {
//     List<Categories> filteredCategories = [];
//     locator<HomeSearchBloc>().allHome$.listen((categories) {
//       for (var item in categories) {
//         if (item.name.toLowerCase().contains(query.toLowerCase())) {
//           filteredCategories.add(item);
//         }
//       }
//     });
//     return filteredCategories;
//   }
// }
class HomeBloc {
  final BehaviorSubject<HomeScreenModel> _homeSubject =
      BehaviorSubject<HomeScreenModel>();

  Stream<HomeScreenModel> get home$ => _homeSubject.stream;

  HomeBloc() {
    Stream.fromFuture(
      DioHelper.getData(url: "home_screen"),
    ).listen((result) {
      if (result.data != null) {
        HomeScreenModel res = HomeScreenModel.fromJson(result.data);
        _homeSubject.add(res);
        // _homeSubject.add(result.data);
        // _homeSubject.add(result);
      }
    });
  }

  void refreshHomeBloc() {
    Stream.fromFuture(
      DioHelper.getData(url: "home_screen"),
    ).listen((result) {
      if (result.data != null) {
        _homeSubject.add(HomeScreenModel.fromJson(result.data));
        // _homeSubject.add(result.data);
      }
    });
  }
}
