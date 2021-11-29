import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/data/mapsData.dart';
import 'package:valorant/models/map.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';

class MapsList extends StatefulWidget {
  const MapsList({Key key}) : super(key: key);

  @override
  _MapsListState createState() => _MapsListState();
}

List<Maps> allMaps;

class _MapsListState extends State<MapsList> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text(
          "Maps",
          style: AppTheme.subHeading.copyWith(color: Colors.black),
        ),
        foregroundColor: Colors.black,
      ),
      body: FutureBuilder(
        future: MapsData().readJsonObject(),
        builder: (context, result) {
          if (result.hasData) {
            allMaps = result.data;
            return Padding(
              padding: const EdgeInsets.only(
                  top: 8.0, left: 8, right: 8, bottom: 48),
              child: Swiper(
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      gradient: LinearGradient(
                          colors: index % 4 == 0
                              ? [Colors.amber, Colors.amberAccent]
                              : index % 4 == 1
                                  ? [Colors.teal, Colors.tealAccent]
                                  : index % 4 == 2
                                      ? [
                                          Colors.lightBlue,
                                          Colors.lightBlueAccent
                                        ]
                                      : [Colors.cyan, Colors.cyanAccent]),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Card(
                            elevation: 10,
                            child: Image.asset(
                              allMaps[index].splash,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                allMaps[index].displayName,
                                style: AppTheme.heading
                                    .copyWith(color: Colors.black87),
                              ),
                              Image.asset(
                                allMaps[index].displayIcon,
                                width: screenWidth * 0.3,
                              ),
                            ],
                          ),
                          Text(
                            allMaps[index].coordinates,
                            style: AppTheme.display2.copyWith(fontSize: 16),
                          ),
                        ],
                      ),
                    ),
                  );
                },
                itemCount: allMaps.length,
                scrollDirection: Axis.vertical,
                pagination:
                    SwiperPagination(alignment: Alignment.centerRight),
                control: SwiperControl(),
              ),
            );
          } else {
            return Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

