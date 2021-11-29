class Maps {
  String displayName;
  String coordinates;
  String displayIcon;
  String splash;


  Maps(
      {this.displayName,
        this.coordinates,
        this.displayIcon,
        this.splash,});

  Maps.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    coordinates = json['coordinates'];
    displayIcon = json['displayIcon'];
    splash = json['splash'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['coordinates'] = this.coordinates;
    data['displayIcon'] = this.displayIcon;
    data['splash'] = this.splash;
    return data;
  }
}


