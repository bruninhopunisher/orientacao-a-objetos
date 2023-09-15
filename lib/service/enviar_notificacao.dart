import 'package:orientacao_a_objetos/Classes/pessoa_abstract.dart';
import 'package:orientacao_a_objetos/enum/tipo_notificacao.dart';
import 'package:orientacao_a_objetos/service/impl/notificacao_email.dart';
import 'package:orientacao_a_objetos/service/impl/notificacao_push_notification.dart';
import 'package:orientacao_a_objetos/service/impl/notificacao_sms.dart';
import 'package:orientacao_a_objetos/service/notificacao_interface.dart';

class EnviarNotificacao {
  NotificacaoInterface? notificacaoInterface;

  void notificar(Pessoa pessoa) {
    switch (pessoa.getTipoNotificacao()) {
      case TipoNotificacao.EMAIL:
         notificacaoInterface = NotificacaoEmail();
        break;
      case TipoNotificacao.PUSH_NOTIFICATION:
        notificacaoInterface = PushNotification();
        break;
      case TipoNotificacao.SMS:
        notificacaoInterface = NotificacaoSMS();
        break;
      default:
        return;
    }
    if (notificacaoInterface != null) {
      notificacaoInterface!.enviarNotificacao(pessoa);
    } else {
      print("Pessoa sem tipo de notificação");
    }
  }
}