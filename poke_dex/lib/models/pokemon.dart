// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/material.dart';

class Pokemon {
  final int id;
  final String name;
  final int height;
  final int weight;
  final List<dynamic> abilities;
  final List<dynamic> moves;
  final List<Types> types;
  final List<Status> stats;
  final String? image;

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
      height: map['height'] as int,
      weight: map['weight'] as int,
      abilities: (map['abilities'] as List<dynamic>)
          .map((e) => e['ability']['name'])
          .toList(),
      moves: (map['moves'] as List<dynamic>)
          .map((e) => e['move']['name'])
          .toList(),
      types: (map['types'] as List<dynamic>)
          .map((e) => Types(name: e['type']['name']))
          .toList(),
      stats: (map['stats'] as List<dynamic>)
          .map((e) => Status(value: e['base_stat'], name: e['stat']['name']))
          .toList(),
      image: map['sprites']['other']['dream_world']['front_default'] as String?,
    );
  }

  String toJson() => json.encode(toMap());

  factory Pokemon.fromJson(String source) =>
      Pokemon.fromMap(json.decode(source) as Map<String, dynamic>);
}

class Status {
  final String name;
  final int value;

  Status({required this.name, required this.value});
}

class Types {
  final String name;

  Types({required this.name});

  static final _colorsMap = {
    'fire': Colors.red,
    'water': Colors.blue,
    'grass': Colors.green,
    'electric': Colors.yellow,
    'ground': Colors.brown,
    'poison': Colors.purple,
    'normal': Colors.grey,
    'psychic': Colors.pink,
    'bug': Colors.lightGreen,
    'dragon': Colors.blueAccent,
    'ghost': Colors.deepPurple,
    'steel': Colors.grey
        .shade400, // Não tem MaterialColor exato para 'Aço', então usamos um tom de cinza.
    'fairy': Colors.pink.shade100,
    'ice': Colors.lightBlue,
    'fighting': Colors.orange,
    'dark': Colors.black,
    'rock': Colors.grey.shade700, // Tipo 'Rock' com um tom de cinza escuro
    'flying': Colors.lightBlueAccent, // Tipo 'Flying' com uma cor azul clara
    'stellar': Colors
        .deepPurpleAccent, // Adicionado o tipo 'Stellar' com uma cor roxa brilhante
    'unknown': Colors.grey,
  };

  Color getColor() {
    return _colorsMap[name] ?? Colors.grey;
  }
}
