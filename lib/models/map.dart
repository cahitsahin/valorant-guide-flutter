class Maps {
  String displayName;
  String coordinates;
  String displayIcon;
  String listViewIcon;
  String splash;
  List<String> callouts;


  Maps(
      {this.displayName,
        this.coordinates,
        this.displayIcon,
        this.listViewIcon,
        this.splash,
        this.callouts});

  Maps.fromJson(Map<String, dynamic> json) {
    displayName = json['displayName'];
    coordinates = json['coordinates'];
    displayIcon = json['displayIcon'];
    listViewIcon = json['listViewIcon'];
    splash = json['splash'];
    callouts = json['callouts'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['displayName'] = this.displayName;
    data['coordinates'] = this.coordinates;
    data['displayIcon'] = this.displayIcon;
    data['listViewIcon'] = this.listViewIcon;
    data['splash'] = this.splash;
    data['otherSkin'] = this.callouts;
    return data;
  }
}


