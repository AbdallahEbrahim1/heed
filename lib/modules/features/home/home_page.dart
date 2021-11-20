import 'package:flutter/material.dart';
import 'package:flutter_apppp11/components/components.dart';
import 'package:flutter_apppp11/components/slider.dart';
import 'package:flutter_apppp11/locator.dart';
import 'package:flutter_apppp11/modules/features/category_details/category_details_page.dart';
import 'package:flutter_apppp11/modules/features/home/home_manager.dart';
import 'package:flutter_apppp11/modules/features/home/home_model.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(100),
        child: AppBar(
          centerTitle: true,
          backgroundColor: Colors.white24, //  =>   الكرف
          flexibleSpace: ClipRRect(
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/Header.png'),
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ),

          // elevation: 0.1,
          //  backgroundColor: Colors.blue,
          actions: [
            IconButton(
              icon: Icon(
                Icons.notifications,
                color: Colors.white,
              ),
              onPressed: () {},
            ),
          ],
        ),
      ),
      drawer: myDrawer(context),
      body: StreamBuilder<HomeScreenModel>(
          stream: locator<HomeBloc>().home$,
          builder: (context, AsyncSnapshot<HomeScreenModel> homeSnapshot) {
            // List<Categories> content = data.data.categories;
            // locator<HomeSearchBloc>().inHome.add(content);
            // if (homeSnapshot.hasData) {
            //   print(homeSnapshot.hasData);
            //   print(
            //       "data.data.status ${homeSnapshot.data.data.categories[0].name}");
            // }
            return homeSnapshot.hasData
                ? Column(
                    children: [
                      HeedSlider(images: homeSnapshot.data.data.slider),
                      Expanded(
                        child: ListView.separated(
                          itemCount:
                              homeSnapshot.data.data.categories?.length ?? 0,
                          separatorBuilder: (context, index) => SizedBox(
                            height: 3,
                          ),
                          itemBuilder: (context, index) => InkWell(
                            onTap: () {
                              navigateTo(
                                context,
                                CategoryDetailsPage(
                                  categoryId: homeSnapshot
                                      .data.data.categories[index].id,
                                ),
                              );
                            },
                            child: Stack(
                              children: [
                                Container(
                                  child: Image.network(
                                    homeSnapshot
                                        .data.data.categories[index].image,
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  // bottom: 0,
                                  right: 0,
                                  left: 0,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image(
                                        image: NetworkImage(
                                            '${homeSnapshot.data.data.categories[index].icon}'),
                                      ),
                                      Text(
                                        '${homeSnapshot.data.data.categories[index].name}',
                                        // AppLocalizations.of(context)
                                        //     .translate("Dental Clinic"),
                                        style: TextStyle(
                                          fontSize: 25,
                                          color: Colors.white,
                                        ),
                                      ),
                                      //Text('Dental Clinic ',style: TextStyle(color: Colors.white,fontSize: 20),)
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                : Container();
          }),
    );
  }
}
