
import 'package:flutter/material.dart';

class Contato {
  String nome;
  String email;
  IconData ?icone;
  Color ?cor;
  String imagem;
  Contato(this.nome, this.email, this.icone, this.cor, this.imagem);
}

List<Contato> contatos = [
  Contato("Matheus", "pazis@picapau.com", Icons.favorite_border, Colors.black, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnKKKA56zDkCnRvEP41qbyQHfwG3OQJrnzWd2g_qte9Q&s'),
  Contato("Marcelo", "marcelo@citrus.com", Icons.favorite_border, Colors.black, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQnZcUWYYr6a2LizVnA5Fb7xfOQm8X4njpuMxz0B3fa7A&s'),
  Contato("Miguel", "spyro@palmeiras.com", Icons.favorite_border, Colors.black, 'https://pbs.twimg.com/profile_images/1759613268665016348/3s9UW9mw_400x400.jpg'),
  Contato("Lima", "lima@santos.com", Icons.favorite_border, Colors.black, 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQIKNrc-ul6lmaTzw8HgtnR0P0bs9fbxYecfRVYGXtDWQ&s'),
  Contato("Itália", "vichenzo@italy.com", Icons.favorite_border, Colors.black, 'https://s5.static.brasilescola.uol.com.br/be/2021/12/bandeira-da-italia.jpg'),
];