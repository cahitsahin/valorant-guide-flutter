import 'package:flutter/material.dart';
import 'package:valorant/models/characters.dart';
import 'package:valorant/services/style.dart';
import 'characterWidget.dart';

class CharacterAbilitiesWidget extends StatelessWidget {
  final Character character;
  final double screenHeight;
  final double screenWidth;

  CharacterAbilitiesWidget(
      {this.character, this.screenHeight, this.screenWidth});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: screenHeight * 0.4,
      child: ListView.builder(
          itemCount: 4,
          controller: PageController(viewportFraction: 0.6),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Container(
                width: screenWidth * 0.55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        radius: 30,
                        backgroundColor:
                            getColorFromHex(character.primaryColor),
                        child: Image.asset(
                          character.abilities[index].imagePath,
                          height: 40,
                        ),
                      ),
                      title: Text(
                        character.abilities[index].name,
                        style: AppTheme.subHeading.copyWith(
                            color: Colors.black,
                            fontSize: 16,
                            fontWeight: FontWeight.w600),
                      ),
                      subtitle: Text(
                        character.abilities[index].type,
                        style: AppTheme.subHeading
                            .copyWith(color: Colors.grey, fontSize: 14),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        character.abilities[index].description,
                        style: AppTheme.subHeading.copyWith(
                            color: Colors.grey.shade600, fontSize: 14),
                      ),
                    ),
                    ListTile(
                      leading: Image.asset(
                        "assets/images/profileIcons/cost.png",
                        color: getColorFromHex(character.primaryColor),
                        height: 30,
                      ),
                      title: Text(
                        character.abilities[index].cost,
                        style: AppTheme.subHeading.copyWith(
                          color: Colors.grey,
                          fontSize: 16,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
    );
  }
}
