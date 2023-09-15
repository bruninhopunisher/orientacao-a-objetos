// PROPRIEDADES
import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';

abstract class Pessoa {
  String _nome = "";
  String _endereco = "";
  String _email = "";
  String _telefone = "";
  String _token = "";
  TipoNotificacao _tipoNotificacao = TipoNotificacao.NENHUM;

  // Abstract Class é uma classe que não faz sentido ser usada,
  // apenas utlizar como base extends para outras

  // MÉTODOS E ENCAPSULAMENTOS


  // Salva o nome indicado por uma pessoa na variavel '_nome'
  void setNome (String nome) {
    _nome = nome;
  }

  // Função que retorna como parâmetro o nome da pessoa usando a variável privada que pode
  // ser usada em qualquer outro lugar para recuperar a instância
  String getNome() {
    return _nome;
  }

  // Salva o nome indicado por uma pessoa na variavel '_endereco'
  void setEndereco (String endereco) {
    _endereco = endereco;
  }

  // Função que retorna como parâmetro o endereco da pessoa usando a variável privada que pode
  //   // ser usada em qualquer outro lugar para recuperar a instância
  String getEndereco() {
    return _endereco;
  }

  void setTipoNotificacao(TipoNotificacao tipoNotificacao) {
    _tipoNotificacao = tipoNotificacao;
  }

  TipoNotificacao getTipoNotificacao() {
    return _tipoNotificacao;
  }

  void setEmail (String email) {
    _email = email;
  }

  String getEmail() {
    return _email;
  }

  void setTelefone (String telefone) {
    _telefone = telefone;
  }

  String getTelefone() {
    return _telefone;
  }

  void setToken (String token) {
    _token = token;
  }

  String getToken() {
    return _token;
  }

  // Construtor
  Pessoa (String nome, String endereco, {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}) {
    _nome = nome;
    _endereco = endereco;
    _tipoNotificacao = tipoNotificacao;
  }

  // Sobrescreve
  @override
  String toString() {
    return {
      "Nome": _nome,
      "Endereço": _endereco,
      "TipoNotificacao": _tipoNotificacao
    }.toString();
  }
}