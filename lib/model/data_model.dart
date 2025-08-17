class DataModel {
  String name;
  int age;
  String study;
  String address;
  String imageurl;

  DataModel({
    required this.name,
    required this.age,
    required this.study,
    required this.address,
    required this.imageurl,
  });

  factory DataModel.fromFire(Map<String, dynamic> data) {
    return DataModel(
      name: data['name'],
      age: data['age'],
      study: data['study'],
      address: data['address'],
      imageurl: data['imageurl'],
    );
  }

  Map<String, dynamic> toFire() {
    return {
      "name": name,
      'age': age,
      'study': study,
      'address': address,
      'imageurl': imageurl,
    };
  }
}
