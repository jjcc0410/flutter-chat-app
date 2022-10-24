// To parse this JSON data, do
//
//     final welcome = welcomeFromJson(jsonString);

import 'dart:convert';

import 'package:chat/models/usuario.dart';

Welcome welcomeFromJson(String str) => Welcome.fromJson(json.decode(str));

String welcomeToJson(Welcome data) => json.encode(data.toJson());

class Welcome {
  Welcome({
    required this.ok,
    required this.usuarios,
    required this.desde,
  });

  bool ok;
  List<Usuario> usuarios;
  int desde;

  factory Welcome.fromJson(Map<String, dynamic> json) => Welcome(
        ok: json["ok"],
        usuarios: List<Usuario>.from(
            json["usuarios"].map((x) => Usuario.fromJson(x))),
        desde: json["desde"],
      );

  Map<String, dynamic> toJson() => {
        "ok": ok,
        "usuarios": List<dynamic>.from(usuarios.map((x) => x.toJson())),
        "desde": desde,
      };
}
