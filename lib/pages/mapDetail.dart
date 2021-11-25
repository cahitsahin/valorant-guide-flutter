import 'package:flutter/material.dart';
import 'package:valorant/models/map.dart';
import 'package:valorant/services/style.dart';

class MapDetailScreen extends StatefulWidget {
  final Maps map;

  const MapDetailScreen({Key key, this.map}) : super(key: key);

  @override
  _MapDetailScreenState createState() => _MapDetailScreenState();
}

class _MapDetailScreenState extends State<MapDetailScreen> {
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          Hero(
            tag: "ground-${widget.map.displayName}",
            child: DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.amber, Colors.amberAccent],
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                SizedBox(
                  height: 40,
                ),
                IconButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  iconSize: 32,
                  icon: Icon(
                    Icons.close,
                    color: Colors.white.withOpacity(0.8),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Center(
                  child: Hero(
                    tag: "image-${widget.map.displayName}",
                    child: Image.asset(
                      widget.map.coordinates,
                      width: screenWidth * 0.8,
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 6, right: 6),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: "name-${widget.map.displayName}",
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            child: Text(
                              widget.map.displayName,
                              style: AppTheme.heading.copyWith(
                                  fontSize: 22, fontWeight: FontWeight.w700),
                            ),
                          ),
                        ),
                      ),
                      Text(
                        widget.map.coordinates,
                        style: AppTheme.subHeading.copyWith(fontSize: 14),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 4, right: 4, top: 8),
                  child: Material(
                    color: Colors.transparent,
                    child: Container(
                      child: Text(
                        "Other Skin",
                        style: AppTheme.heading.copyWith(
                            fontSize: 18, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Divider(
                    height: 16,
                    color: Colors.white70,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 4, left: 4),
                  child: Container(
                    color: Colors.transparent,
                    height: screenHeight * 0.20,
                    child: ListView.builder(
                        itemCount: widget.map.callouts.length,
                        controller: PageController(viewportFraction: 0.6),
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Card(
                            color: Colors.transparent,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                            child: Container(
                              width: screenWidth * 0.65,
                            ),
                          );
                        }),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
