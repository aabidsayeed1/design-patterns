class House {
  String? walls;
  String? doors;
  int windows;
  String? roof;

  bool garage;
  bool pool;
  bool garden;
  bool fancyStatues;

  House({
    this.walls,
    this.doors,
    this.windows = 0,
    this.roof,
    this.garage = false,
    this.pool = false,
    this.garden = false,
    this.fancyStatues = false,
  });

  void showHouseDetails() {
    if (walls != null) print("Walls: $walls");
    if (doors != null) print("Doors: $doors");
    if (windows != 0) print("Windows: $windows");
    if (roof != null) print("Roof: $roof");

    if (garage || pool || garden || fancyStatues) {
      print("Additional features: "
          "${pool ? 'pool, ' : ''}"
          "${garage ? 'garage, ' : ''}"
          "${garden ? 'garden, ' : ''}"
          "${fancyStatues ? 'fancy statues, ' : ''}");
    }
  }
}
