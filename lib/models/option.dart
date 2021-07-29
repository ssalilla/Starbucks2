class Option {
  final int id;
  final String title;
  final String? subTitle;
  final String? img;
  final double price;

  Option(
      {required this.id,
      required this.title,
      this.img,
      this.price = 0.0,
      this.subTitle});
}
