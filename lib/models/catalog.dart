class Item {
  final String id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image}); //adding curly braces for named constructor
}

final products = [
  Item(
      id: "Codepur01",
      name: "iPhone 12 pro",
      desc: "Apple iPhone 12th generation",
      price: 999,
      color: "#33505a",
      image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQFyUl_OSeall-lEZZhml8B8W7mJf_EELuxzw&usqp=CAU")
];
