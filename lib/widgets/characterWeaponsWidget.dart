import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:folding_cell/folding_cell.dart';
import 'package:valorant/services/style.dart';
import 'package:valorant/widgets/characterWidget.dart';

class CharacterWeaponsWidget extends StatelessWidget {
  final Character character;
  final double screenHeight;
  final double screenWidth;

  CharacterWeaponsWidget(
      {Key key, this.character, this.screenHeight, this.screenWidth})
      : super(key: key);

  var _foldingCellKey = GlobalKey<SimpleFoldingCellState>();

  @override
  Widget build(BuildContext context) {
    return SimpleFoldingCell(
      key: _foldingCellKey,
      frontWidget: _buildFrontWidget(),
      innerTopWidget: _buildInnerTopWidget(),
      innerBottomWidget: _buildInnerBottomWidget(),
      cellSize: Size(screenWidth*0.8, 125),
      padding: EdgeInsets.symmetric(horizontal: 10),
      animationDuration: Duration(milliseconds: 300),
    );
  }

  Widget _buildFrontWidget() {
    return InkWell(
      onTap: () {
        _foldingCellKey?.currentState?.toggleFold();
      },
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.white,
        ),
        child: ListTile(
            title: Text(
              "Bulldog",
              style: AppTheme.subHeading.copyWith(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w600),
            ),
            leading: Image.asset(
              "assets/images/weaponImages/Bulldog.png",
              width: screenWidth * 0.3,
            ),
            subtitle: Text(
              "Rifle",
              style: AppTheme.subHeading.copyWith(
                  color: Colors.grey,
                  fontSize: 14,
                  fontWeight: FontWeight.w400),
            ),
            trailing: Column(
              children: [
                Image.asset(
                  "assets/images/profileIcons/cost.png",
                  color: getColorFromHex(character.primaryColor),
                  height: 30,
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  "2100",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.grey,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
//          Text(
//            "Tab for Details",
//            style: AppTheme.subHeading.copyWith(
//                color: Colors.grey, fontSize: 12, fontWeight: FontWeight.w600),
//          ),
            ),
      ),
    );
  }

  Widget _buildInnerTopWidget() {
    return InkWell(
      onTap: () => _foldingCellKey?.currentState?.toggleFold(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: getColorFromHex(character.secondaryColor),
        ),
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/weaponIcons/Type.png",
                  color: Colors.white,
                  width: screenWidth * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "9.15 / 14",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/weaponIcons/Pen.png",
                  color: Colors.white,
                  width: screenWidth * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Medium",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/weaponIcons/Head.png",
                  color: Colors.white,
                  width: screenWidth * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "116",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/weaponIcons/Torso.png",
                  color: Colors.white,
                  width: screenWidth * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "35",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/images/weaponIcons/Leg.png",
                  color: Colors.white,
                  width: screenWidth * 0.08,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "30",
                  style: AppTheme.subHeading.copyWith(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildInnerBottomWidget() {
    return InkWell(
      onTap: () => _foldingCellKey?.currentState?.toggleFold(),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        alignment: Alignment.center,
        child: Image.asset(
          "assets/images/weaponImages/Bulldog.png",
          width: screenWidth * 0.5,
        ),
      ),
    );
  }
}
