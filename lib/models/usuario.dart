class Usuario {
  final String nombre;
  final int edad;
  final List<String> profesiones;

  Usuario({
    required this.edad,
    required this.nombre,
    required this.profesiones,
  });

  Usuario copyWith({
    String? nombre,
    int? edad,
    List<String>? profesiones,
  }) =>
      Usuario(
        edad: edad ?? this.edad,
        nombre: nombre ?? this.nombre,
        profesiones: profesiones ?? this.profesiones,
      );
}
