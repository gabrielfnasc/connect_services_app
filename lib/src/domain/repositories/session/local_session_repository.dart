import '../../../domain//entities/session.dart';

abstract class LocalSessionRepository {
  Future<Session> find();
  Future<void> save(Session session);
}
