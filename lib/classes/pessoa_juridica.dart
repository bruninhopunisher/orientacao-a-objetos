import 'package:orientacao_a_objetos/Classes/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';

class PessoaJuridica extends Pessoa {
  String _empresa = "";
  String _cnpj = "";

  void setCPF (String cnpj) {
    _cnpj = cnpj;
  }

  String getCPF () {
    return _cnpj;
  }

  // Construtor
  PessoaJuridica (String nome, String empresa, String endereco, String cnpj,
      {TipoNotificacao tipoNotificacao = TipoNotificacao.NENHUM}): super(nome, endereco, tipoNotificacao: tipoNotificacao) {
    _empresa = empresa;
    _cnpj = cnpj;
  }

  @override
  String toString() {
    return {
      "Tipo": "Pessoa Juridica",
      "Nome": getNome(),
      "Empresa": _empresa,
      "Endereço": getEndereco(),
      "CNPJ": _cnpj,
      "Tipo Notificacao": getTipoNotificacao()
    }.toString();
  }
}