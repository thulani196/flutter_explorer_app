import '../models/location_model.dart';

final rawData = [
  {
    "name": "Hell-holes",
    "location": "Ireland",
    "img_url": "assets/images/hell_holes.jpeg",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 3.0,
    "visits": 2000
  },
  {
    "name": "Mach Piccu",
    "location": "Peru",
    "img_url": "assets/images/machu_pichuu.jpeg",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 3.7,
    "visits": 3000
  },
  {
    "name": "Santorini",
    "location": "Greece",
    "img_url": "assets/images/santorini.jpeg",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 5.0,
    "visits": 65000
  },
];

final rawData2 = [
  {
    "name": "Venezia",
    "location": "Italy",
    "img_url": "assets/images/venezia.jpeg",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 5.0,
    "visits": 2600
  },
  {
    "name": "Port Charlotte",
    "location": "USA",
    "img_url": "assets/images/port_charlotte.jpeg",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 3.3,
    "visits": 75000
  },
  {
    "name": "Yosemite",
    "location": "California",
    "img_url": "assets/images/yosemite.webp",
    "description":
        "Santorini is a beautiful island in Greece known for its stunning blue-domed churches, picturesque white-washed buildings, and breathtaking views of the Aegean Sea.",
    "rating": 4.5,
    "visits": 45000
  }
];

List<Location> locations =
    List<Location>.from(rawData.map((e) => Location.fromJson(e)));

List<Location> locations1 =
    List<Location>.from(rawData2.map((e) => Location.fromJson(e)));
