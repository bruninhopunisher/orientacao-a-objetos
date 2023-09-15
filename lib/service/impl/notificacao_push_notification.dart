import 'package:orientacao_a_objetos/Classes/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/service/notificacao_interface.dart';

class PushNotification extends NotificacaoInterface {
  @override
  void enviarNotificacao(Pessoa pessoa) {
    print("Enviando Push para: ${pessoa.getNome()}");
  }
}