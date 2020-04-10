import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/pages/character_detail.dart';
import 'file:///D:/flutter/valorant/lib/services/style.dart';

class CharacterWidget extends StatelessWidget {
  final Character character;
  final PageController pageController;
  final int currentPage;

  CharacterWidget({
    Key key,
    this.character,
    this.pageController,
    this.currentPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(40)
      ),
      elevation: 10,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            PageRouteBuilder(
              transitionDuration: Duration(milliseconds: 350),
              pageBuilder: (context, _, __) =>
                  CharacterDetailScreen(character: character),
            ),
          );
        },
        child: AnimatedBuilder(
          animation: pageController,
          builder: (context, child) {
            double value =1;
            if(pageController.position.haveDimensions){
              value = pageController.page - currentPage;
              value = (1-(value.abs()*0.6)).clamp(0.0,1.0);
            }
            return Stack(
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: const EdgeInsets.only(top:8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: <Widget>[
                        CircleAvatar(
                          backgroundColor: getColorFromHex(character.primaryColor),
                          child: Image.asset(
                            character.abilities[0].imagePath,
                            color: Colors.white,
                            height: 35
                          ),
                          radius: 25*value,
                        ),
                        CircleAvatar(
                          backgroundColor: getColorFromHex(character.primaryColor),
                          child: Image.asset(
                            character.abilities[1].imagePath,
                            color: Colors.white,
                            height: 35,
                          ),
                          radius: 25*value,
                        ),
                        CircleAvatar(
                          backgroundColor: getColorFromHex(character.primaryColor),
                          child: Image.asset(
                            character.abilities[2].imagePath,
                            color: Colors.white,
                            height: 35,
                          ),
                          radius: 25*value,
                        ),
                        CircleAvatar(
                          backgroundColor: getColorFromHex(character.primaryColor),
                          child: Image.asset(
                            character.abilities[3].imagePath,
                            color: Colors.white,
                            height: 35,
                          ),
                          radius: 25*value,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: ClipPath(
                    clipper: CharacterCardBackgroundClipper(),
                    child: Hero(
                      tag: "background-${character.key}",
                      child: Container(
                        height: 0.5 * screenHeight,
                        width: 0.9 * screenWidth,
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            colors: [getColorFromHex(character.primaryColor),getColorFromHex(character.secondaryColor)],
                            begin: Alignment.topRight,
                            end: Alignment.bottomLeft,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Hero(
                  tag: "image-${character.key}",
                  child: Align(
                    alignment: Alignment(0, -0.5),
                    child: Image.asset(
                      character.imagePath,
                      height: screenHeight * 0.55*value,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Hero(
                        tag: "name-${character.key}",
                        child: Material(
                          color: Colors.transparent,
                          child: Container(
                            child: Text(
                              character.key,
                              style: AppTheme.heading,
                            ),
                          ),
                        ),
                      ),
                      Text(
                        "Tap to Read Details",
                        style: AppTheme.subHeading,
                      ),
                    ],
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

Color getColorFromHex(String hexColor) {
  hexColor = hexColor.replaceAll("#", "");
  if (hexColor.length == 6) {
    hexColor = "FF" + hexColor;
  }
  if (hexColor.length == 8) {
    return Color(int.parse("0x$hexColor"));
  }
}

class CharacterCardBackgroundClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path clippedPath = Path();
    double curveDistance = 40;

    clippedPath.moveTo(0, size.height * 0.4);
    clippedPath.lineTo(0, size.height - curveDistance);
    clippedPath.quadraticBezierTo(
        1, size.height - 1, 0 + curveDistance, size.height);
    clippedPath.lineTo(size.width - curveDistance, size.height);
    clippedPath.quadraticBezierTo(size.width + 1, size.height - 1, size.width,
        size.height - curveDistance);
    clippedPath.lineTo(size.width, 0 + curveDistance);
    clippedPath.quadraticBezierTo(size.width - 1, 0,
        size.width - curveDistance - 5, 0 + curveDistance / 3);
    clippedPath.lineTo(curveDistance, size.height * 0.29);
    clippedPath.quadraticBezierTo(
        1, (size.height * 0.30) + 10, 0, size.height * 0.4);
    return clippedPath;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
