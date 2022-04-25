class Model {
  final String title, image, price, name;

  Model(
      {required this.name,
      required this.image,
      required this.price,
      required this.title});
}

List<Model> list2 = [
  Model(
      image: "lib/images/avocado/avocado2.png",
      price: "#200",
      title: "Avocado",
      name: "avocado"),
  Model(
      image: "lib/images/mango/mango2.png",
      price: "#400",
      title: "Mango",
      name: "mango"),
  Model(
      image: "lib/images/orange/orange2.png",
      price: "#500",
      title: "Orange",
      name: "orange"),
  Model(
      image: "lib/images/straw_berry/straw2.png",
      price: "#600",
      title: "Straw Berry",
      name: "straw"),
  Model(
      image: "lib/images/orange/orange2.png",
      price: "#700",
      title: "Orange",
      name: "orange"),
  Model(
      image: "lib/images/straw_berry/straw2.png",
      price: "#300",
      title: "Straw Berry",
      name: "straw"),
  Model(
      image: "lib/images/mango/mango3.png",
      price: "#800",
      title: "Mango",
      name: "mango"),
  Model(
      image: "lib/images/avocado/avocado3.png",
      price: "#200",
      title: "Avocado",
      name: "avocado"),
];

List<String> avocado = [
  "lib/images/avocado/avocado1.png",
  "lib/images/avocado/avocado2.png",
  "lib/images/avocado/avocado3.png",
];
List<String> mango = [
  "lib/images/mango/mango1.png",
  "lib/images/mango/mango2.png",
  "lib/images/mango/mango3.png",
];
List<String> straw = [
  "lib/images/straw_berry/straw1.png",
  "lib/images/straw_berry/straw2.png",
  "lib/images/straw_berry/straw3.png",
];
List<String> orange = [
  "lib/images/orange/orange1.png",
  "lib/images/orange/orange2.png",
  "lib/images/orange/orange3.png",
];
