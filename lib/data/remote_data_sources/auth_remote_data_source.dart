import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/app/firebase_auth_service.dart';

@injectable
class AuthRemoteDataSource {
  AuthRemoteDataSource({required this.firebaseAuthService});

  final FirebaseAuthService firebaseAuthService;

  Future<void> signOut() async {
    FirebaseAuth.instance.signOut();
  }

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        rethrow;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        rethrow;
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      print(e);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> createUserWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
        rethrow;
      } else if (e.code == 'email-already-in-use') {
        print('The account already exists for that email.');
        rethrow;
      } else {
        rethrow;
      }
    } on Exception catch (e) {
      print(e);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> signInAnonymously() async {
    try {
      await FirebaseAuth.instance.signInAnonymously();
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case "operation-not-allowed":
          print("Anonymous auth hasn't been enabled for this project.");
          rethrow;
        default:
          print("Unknown error.");
          rethrow;
      }
    }
  }

  Future<void> startUserSubscription(
      Function(User?) onData, Function(Object?) onError) async {
    firebaseAuthService.startUserSubscription(onData, onError);
  }

  Future<void> cancelUserSubscription() async {
    firebaseAuthService.cancelUserSubscription();
  }
}
