class PetModel {
   String? especie;
   String? nome;
   int? idade;

   PetModel();

  PetModel.create(this.especie, this.nome, this.idade);

  factory PetModel.fromMap(Map<String, dynamic> map){
    return PetModel.create(
    map['especie'] ?? '',
    map['nome'] ?? '',
    map['idade']?.toInt()?? 0);
    
  }

  factory PetModel.fromRequest(Map map){
    return PetModel()
    ..especie = map['especie']
    ..nome = map['nome']
    ..idade = map['idade'];
  }

    Map<String, dynamic> toMap() {
    return {
      'especie': especie,
      'nome': nome,
      'idade': idade,
    };
  }

  @override
  String toString() {
    return 'PetModel(especie: $especie, nome: $nome, idade: $idade)';
  }
}
