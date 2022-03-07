class Promotion {
  final String name;
  final String description;
  final String image;

  Promotion(
      {required this.name, required this.description, required this.image});

  Promotion copyWith({
    required String name,
    required String description,
    required String image,
  }) {
    return Promotion(
        name: name ?? this.name,
        description: description ?? this.description,
        image: image ?? this.image);
  }
}
