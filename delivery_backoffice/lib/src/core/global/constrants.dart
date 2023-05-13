import '../storage/session_storage.dart';

enum SessionStorageKeys {
  accessToken('/ACESS_TOKEN');

  final String key;
  const SessionStorageKeys(this.key);
}
