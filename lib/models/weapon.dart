class Weapon {
  String type;
  String description;
  String key;
  List<FireModes> fireModes;
  String imagePath;
  String cost;
  String capacity;
  String rate;
  String wallPenetration;
  List<DistanceRate> distanceRate;
  List<String> otherSkin;

  Weapon(
      {this.type,
        this.description,
        this.key,
        this.fireModes,
        this.imagePath,
        this.cost,
        this.capacity,
        this.rate,
        this.wallPenetration,
        this.distanceRate,
        this.otherSkin});

  Weapon.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    description = json['description'];
    key = json['key'];
    if (json['fireModes'] != null) {
      fireModes = new List<FireModes>();
      json['fireModes'].forEach((v) {
        fireModes.add(new FireModes.fromJson(v));
      });
    }
    imagePath = json['imagePath'];
    cost = json['cost'];
    capacity = json['capacity'];
    rate = json['rate'];
    wallPenetration = json['wallPenetration'];
    if (json['distanceRate'] != null) {
      distanceRate = new List<DistanceRate>();
      json['distanceRate'].forEach((v) {
        distanceRate.add(new DistanceRate.fromJson(v));
      });
    }
    otherSkin = json['otherSkin'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['type'] = this.type;
    data['description'] = this.description;
    data['key'] = this.key;
    if (this.fireModes != null) {
      data['fireModes'] = this.fireModes.map((v) => v.toJson()).toList();
    }
    data['imagePath'] = this.imagePath;
    data['cost'] = this.cost;
    data['capacity'] = this.capacity;
    data['rate'] = this.rate;
    data['wallPenetration'] = this.wallPenetration;
    if (this.distanceRate != null) {
      data['distanceRate'] = this.distanceRate.map((v) => v.toJson()).toList();
    }
    data['otherSkin'] = this.otherSkin;
    return data;
  }
}

class FireModes {
  String name;
  String rate;

  FireModes({this.name, this.rate});

  FireModes.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    rate = json['rate'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['rate'] = this.rate;
    return data;
  }
}

class DistanceRate {
  String distance;
  String head;
  String body;
  String leg;

  DistanceRate({this.distance, this.head, this.body, this.leg});

  DistanceRate.fromJson(Map<String, dynamic> json) {
    distance = json['distance'];
    head = json['head'];
    body = json['body'];
    leg = json['leg'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['distance'] = this.distance;
    data['head'] = this.head;
    data['body'] = this.body;
    data['leg'] = this.leg;
    return data;
  }
}