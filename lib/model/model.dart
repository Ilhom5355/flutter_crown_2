class Model {
  final String name;
  final List image;
  final String price;
  final String description;
  final String category;

  Model({
    required this.name,
    required this.image,
    required this.price,
    required this.description,
    required this.category,
  });
}

class TabBarMenuButton {
  final int id;
  final String name;

  TabBarMenuButton({required this.id, required this.name});
}
