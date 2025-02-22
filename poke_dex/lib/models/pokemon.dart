// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class Pokemon {
  final int id;
  final String name;
  final double height;
  final double weight;
  final List<String> abilities;
  final List<String> moves;
  final List<String> types;
  final List<String> stats;
  final String image;

  Pokemon({
    required this.id,
    required this.name,
    required this.height,
    required this.weight,
    required this.abilities,
    required this.moves,
    required this.types,
    required this.stats,
    required this.image,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'height': height,
      'weight': weight,
      'abilities': abilities,
      'moves': moves,
      'types': types,
      'stats': stats,
      'image': image,
    };
  }

  factory Pokemon.fromMap(Map<String, dynamic> map) {
    return Pokemon(
      id: map['id'] as int,
      name: map['name'] as String,
      height: map['height'] as double,
      weight: map['weight'] as double,
      abilities: map['abilities'] as List<String>,
      moves: map['moves'] as List<String>,
      types: map['types'] as List<String>,
      stats: map['stats'] as List<String>,
      image: map['image'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);
}
