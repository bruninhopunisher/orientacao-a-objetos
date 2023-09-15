import 'package:orientacao_a_objetos/Classes/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';

class PessoaFisica extends Pessoa {
  String _cpf = "";

  void setCPF (String cpf) {
    _cpf = cpf;
  }

  String getCPF () {
    return _cpf;
  }


  // Construtor
  PessoaFisica (String nome, String endereco, String cpf,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}): super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _cpf = cpf;
  }

  @override
  String toString() {
    return {
      "Tipo": "Pessoa Fisica",
      "Nome": getNome(),
      "Endereço": getEndereco(),
      "CPF": _cpf,
      "Tipo Notificacao": getTipoNotificacao()
    }.toString();
  }
}