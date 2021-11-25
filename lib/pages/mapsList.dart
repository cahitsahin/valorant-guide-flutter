import 'package:flutter/material.dart';
import 'package:valorant/data/mapsData.dart';
import 'package:valorant/models/map.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';
import 'mapDetail.dart';

class MapsList extends StatefulWidget {

  const MapsList({Key key}) : super(key: key);
  @override
  _MapsListState createState() => _MapsListState();
}

List<Maps> allMaps;

class _MapsListState extends State<MapsList> {
  @override
  Widget build(BuildContext context) {
      final double categoryHeight = MediaQuery.of(context).size.height * 0.30 - 50;
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
             allMaps  = result.data;
              return ListView.builder(
                itemCount: allMaps.length,
                itemBuilder: (BuildContext context, int index) {
                  return mapsRow(allMaps[index],context);
                },
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

Widget mapsRow(Maps map, BuildContext context) {

  return Padding(
    padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 4, bottom: 4),
    child: Card(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10)
      ),
      elevation: 8,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 350),
              pageBuilder: (context, _, __) =>
                  MapDetailScreen(map: map),
            ),
          );
        },
        child: Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Material(
              child: ListTile(
                title: Text(
                  map.displayName,
                  style: AppTheme.heading.copyWith(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w800),
                ),
                leading: Hero(
                  tag: "image-${map.displayName}",
                  child: Image.asset(
                    map.listViewIcon,
                    width: 100,
                  ),
                ),
                subtitle: Text(
                  map.coordinates,
                  style: AppTheme.subHeading.copyWith(
                      color: Colors.black87,
                      fontSize: 14,
                      fontWeight: FontWeight.w400),
                ),
                trailing: Text(
                  map.callouts[0],
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.black,
                    fontSize: 14,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    ),
  );
}
