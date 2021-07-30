class Option {
  final int id;
  final String title;
  final String? subTitle;
  final String? img;
  final double price;

  @override
  bool operator ==(object) {
    return object is Option && object.id == this.id;
  }

  Option(
      {required this.id,
      required this.title,
      this.img,
      this.price = 0.0,
      this.subTitle});

  @override
  int get hashCode => super.hashCode;
}
