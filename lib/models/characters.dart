class Character {
  String type;
  String description;
  String key;
  String imagePath;
  String iconPath;
  String primaryColor;
  String secondaryColor;
  List<BestTeamComp> bestTeamComp;
  List<String> bestWeapon;
  List<Abilities> abilities;

  Character(
      {this.type,
        this.description,
        this.key,
        this.imagePath,
        this.iconPath,
        this.primaryColor,
        this.secondaryColor,
        this.bestTeamComp,
        this.bestWeapon,
        this.abilities});

  Character.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    key = json['key'];
    imagePath = json['imagePath'];
    iconPath = json['iconPath'];
    primaryColor = json['primaryColor'];
    secondaryColor = json['secondaryColor'];
    if (json['bestTeamComp'] != null) {
      bestTeamComp = new List<BestTeamComp>();
      json['bestTeamComp'].forEach((v) {
        bestTeamComp.add(new BestTeamComp.fromJson(v));
      });
    }
    bestWeapon = json['bestWeapon'].cast<String>();
    if (json['abilities'] != null) {
      abilities = new List<Abilities>();
      json['abilities'].forEach((v) {
        abilities.add(new Abilities.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['description'] = this.description;
    data['key'] = this.key;
    data['imagePath'] = this.imagePath;
    data['iconPath'] = this.iconPath;
    data['primaryColor'] = this.primaryColor;
    data['secondaryColor'] = this.secondaryColor;
    if (this.bestTeamComp != null) {
      data['bestTeamComp'] = this.bestTeamComp.map((v) => v.toJson()).toList();
    }
    data['bestWeapon'] = this.bestWeapon;
    if (this.abilities != null) {
      data['abilities'] = this.abilities.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class BestTeamComp {
  List<String> names;
  int rankAttack;
  int rankDefend;

  BestTeamComp({this.names, this.rankAttack, this.rankDefend});

  BestTeamComp.fromJson(Map<String, dynamic> json) {
    names = json['names'].cast<String>();
    rankAttack = json['rankAttack'];
    rankDefend = json['rankDefend'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['names'] = this.names;
    data['rankAttack'] = this.rankAttack;
    data['rankDefend'] = this.rankDefend;
    return data;
  }
}

class Abilities {
  String type;
  String name;
  String imagePath;
  List<String> description;
  String cost;
  int charges;

  Abilities(
      {this.type,
        this.name,
        this.imagePath,
        this.description,
        this.cost,
        this.charges});

  Abilities.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    name = json['name'];
    imagePath = json['imagePath'];
    description = json['description'].cast<String>();
    cost = json['cost'];
    charges = json['charges'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['name'] = this.name;
    data['imagePath'] = this.imagePath;
    data['description'] = this.description;
    data['cost'] = this.cost;
    data['charges'] = this.charges;
    return data;
  }
}