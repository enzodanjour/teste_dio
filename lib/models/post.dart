import 'dart:convert';

class Post {
  int id;
  String titulo;
  String texto;
  String foto;
  Post({
    this.id,
    this.titulo,
    this.texto,
     this.foto,
  });

  Post copyWith({
    int id,
    String titulo,
    String texto,
    String foto,
  }) {
    return Post(
      id: id ?? this.id,
      titulo: titulo ?? this.titulo,
      texto: texto ?? this.texto,
      foto: foto ?? this.foto,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'texto': texto,
      'foto': foto,
    };
  }

  factory Post.fromMap(Map<String, dynamic> map) {
    return Post(
      id: map['id'],
      titulo: map['titulo'],
      texto: map['texto'],
      foto: map['foto'],
    );
  }

  String toJson() => json.encode(toMap());

  factory Post.fromJson(String source) => Post.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Post(id: $id, titulo: $titulo, texto: $texto, foto: $foto)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;
  
    return other is Post &&
      other.id == id &&
      other.titulo == titulo &&
      other.texto == texto &&
      other.foto == foto;
  }

  @override
  int get hashCode {
    return id.hashCode ^
      titulo.hashCode ^
      texto.hashCode ^
      foto.hashCode;
  }
}
