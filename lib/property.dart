import 'package:real_estate_app_demo/drawables.dart';

class Property {
  int id;
  String address;
  String image;

  Property(this.id, this.address, this.image);
}

List<Property> dummyProperties = [
  Property(1, 'Gladkova St, 7', Drawables.propertyImage2),
  Property(2, 'Gladkova St, 12', Drawables.propertyImage3),
  Property(3, 'Gladkova St, 4', Drawables.propertyImage1),
  Property(4, 'Gladkova St, 31', Drawables.propertyImage3),
  Property(5, 'Gladkova St, 19', Drawables.propertyImage2),
  Property(6, 'Gladkova St, 8', Drawables.propertyImage1),
  Property(7, 'Gladkova St, 42', Drawables.propertyImage2),
  Property(8, 'Gladkova St, 14', Drawables.propertyImage1),
  Property(9, 'Gladkova St, 23', Drawables.propertyImage3),
  Property(10, 'Gladkova St, 5', Drawables.propertyImage2),
];
