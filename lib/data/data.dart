class Motor {
  int id;
  String name;
  String description;
  String subDescription;
  int price;
  bool isSelected = false;
  Motor(
      {required this.id,
      required this.name,
      required this.description,
      required this.subDescription,
      required this.price});
}

List<Motor> motor = [
  Motor(
    id: 1,
    name: "Sedan",
    description: "Motor sedan asique",
    subDescription: "* Up to 20kg",
    price: 2000,
  ),
  Motor(
    id: 2,
    name: "Honda",
    description: "Motor sedan asique",
    subDescription: "* Up to 20kg",
    price: 2000,
  ),
  Motor(
    id: 3,
    name: "BMW",
    description: "Motor sedan asique",
    subDescription: "* Up to 20kg",
    price: 2000,
  ),
  Motor(
    id: 4,
    name: "MPV",
    description: "Motor sedan asique",
    subDescription: "* Up to 20kg",
    price: 2000,
  ),
  Motor(
    id: 5,
    name: "Yamaha",
    description: "Motor sedan asique",
    subDescription: "* Up to 20kg",
    price: 2000,
  ),
];
