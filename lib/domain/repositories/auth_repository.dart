import 'dart:async';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:injectable/injectable.dart';
import 'package:shot_roulette/data/remote_data_sources/auth_remote_data_source.dart';

@injectable
class AuthRepository {
  AuthRepository({
    required this.authRemoteDataSource,
  });

  final AuthRemoteDataSource authRemoteDataSource;

  Future<void> signOut() async {
    authRemoteDataSource.signOut();
  }

  Future<void> signInWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await authRemoteDataSource.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
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
      await authRemoteDataSource.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
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
      await authRemoteDataSource.signInAnonymously();
    } on Exception catch (e) {
      print(e);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> linkWithEmailAndPassword(
      {required String email, required String password}) async {
    try {
      await authRemoteDataSource.linkWithEmailAndPassword(
        email: email,
        password: password,
      );
    } on Exception catch (e) {
      print(e);
      rethrow;
    } catch (e) {
      print(e);
      rethrow;
    }
  }

  Future<void> startUserSubscription(
      Function(User?) onData, Function(Object?) onError) async {
    authRemoteDataSource.startUserSubscription(onData, onError);
  }

  Future<void> cancelUserSubscription() async {
    authRemoteDataSource.cancelUserSubscription();
  }
}
