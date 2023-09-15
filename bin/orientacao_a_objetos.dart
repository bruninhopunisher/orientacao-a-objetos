import 'package:orientacao_a_objetos/Classes/pessoa_fisica.dart';
import 'package:orientacao_a_objetos/Classes/pessoa_juridica.dart';
import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';
import 'package:orientacao_a_objetos/service/enviar_notificacao.dart';

void main(List<String> arguments) {
  var pessoaFisica1 = PessoaFisica("Bruno", "Rua Dois","111.222.777-00", tipoNotificacao: TipoNotificacao.PUSH_NOTIFICATION);
  print(pessoaFisica1);

  var pessoaJuridica1 = PessoaJuridica("Bruno","Stop Prime Club", "Rua Três", "45.029.594/0001-00", tipoNotificacao: TipoNotificacao.EMAIL);
  print(pessoaJuridica1);

  EnviarNotificacao enviarNotificacao = EnviarNotificacao();
  enviarNotificacao.notificar(pessoaFisica1);
  enviarNotificacao.notificar(pessoaJuridica1);
}