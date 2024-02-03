import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';

@injectable
class FirebaseAuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  StreamSubscription<User?>? _streamSubscription;

  Stream<User?> get authStateChanges => _auth.authStateChanges();

  Future<void> startUserSubscription(
      Function(User?) onData, Function(Object?) onError) async {
    _streamSubscription = authStateChanges.listen(
      onData,
      onError: (error) {
        onError(error);
      },
    );
  }

  Future<void> cancelUserSubscription() async {
    _streamSubscription?.cancel();
  }
}
