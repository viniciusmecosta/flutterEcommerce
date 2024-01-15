class Category {
  final String icon, title;

  Category({required this.icon, required this.title});
}

List<Category> demo_categories = [
  Category(
    icon: "assets/icons/cel.svg",
    title: "Celular",
  ),
  Category(
    icon: "assets/icons/cam.svg",
    title: "Camera",
  ),
  Category(
    icon: "assets/icons/came.svg",
    title: "Camera 2",
  ),
  Category(
    icon: "assets/icons/note.svg",
    title: "Notebook",
  ),
];
