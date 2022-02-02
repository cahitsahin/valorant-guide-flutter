import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:valorant/bloc/map/map_bloc.dart';
import 'package:valorant/bloc/map/map_event.dart';
import 'package:valorant/bloc/map/map_state.dart';
import 'package:valorant/models/map/map.dart';
import 'package:valorant/services/drawer.dart';
import 'package:valorant/services/style.dart';

class MapsList extends StatefulWidget {
  const MapsList({Key? key}) : super(key: key);

  @override
  _MapsListState createState() => _MapsListState();
}

List<Maps> _maps = [];

class _MapsListState extends State<MapsList> {
  _loadWeapons() async {
    BlocProvider.of<MapBloc>(context).add(const MapFetchEvent());
  }

  @override
  void initState() {
    super.initState();
    _loadWeapons();
  }

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
      body: BlocConsumer<MapBloc, MapState>(listener: (context, state) {
        if (state is MapLoadingState) {
        } else if (state is MapSuccessState && state.maps.isEmpty) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text('No more Maps')));
        } else if (state is MapErrorState) {
          ScaffoldMessenger.of(context)
              .showSnackBar(SnackBar(content: Text(state.error)));
          BlocProvider.of<MapBloc>(context).isFetching = false;
        }
        return;
      }, builder: (context, state) {
        if (state is MapInitialState ||
            state is MapLoadingState && _maps.isEmpty) {
          return CircularProgressIndicator();
        } else if (state is MapSuccessState) {
          _maps.addAll(state.maps);
          BlocProvider.of<MapBloc>(context).isFetching = false;
        } else if (state is MapErrorState && _maps.isEmpty) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              IconButton(
                onPressed: () {
                  BlocProvider.of<MapBloc>(context)
                    ..isFetching = true
                    ..add(MapFetchEvent());
                },
                icon: Icon(Icons.refresh),
              ),
              const SizedBox(height: 15),
              Text(state.error, textAlign: TextAlign.center),
            ],
          );
        }
        return Padding(
          padding:
              const EdgeInsets.only(top: 8.0, left: 8, right: 8, bottom: 48),
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
                                  ? [Colors.lightBlue, Colors.lightBlueAccent]
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
                          _maps[index].splash,
                          fit: BoxFit.fill,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Text(
                            _maps[index].displayName,
                            style: AppTheme.heading
                                .copyWith(color: Colors.black87),
                          ),
                          Image.asset(
                            _maps[index].displayIcon,
                            width: screenWidth * 0.3,
                          ),
                        ],
                      ),
                      Text(
                        _maps[index].coordinates,
                        style: AppTheme.display2.copyWith(fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
            itemCount: _maps.length,
            scrollDirection: Axis.vertical,
            pagination: SwiperPagination(alignment: Alignment.centerRight),
            control: SwiperControl(),
          ),
        );
      }),
    );
  }
}
