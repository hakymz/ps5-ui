class Product {
  String image;
  String name;
  String type;
  String price;

  Product(this.name, this.image, this.type, this.price);
}

List<Product> products_list = [
  Product(
      "Playstation 5 Digital Edition", "assets/ps5.png", "console", "\$400"),
  Product("Playstation5", "assets/ps5-main.png", "console", "\$500"),
  Product("DualSense Wireless Controller", "assets/controller.png",
      "controller", "\$70"),
  Product("Wireless Headset", "assets/headset.png", "Audio and Communication",
      "\$150"),
];
