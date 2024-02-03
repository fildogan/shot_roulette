import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'auth_page_state.dart';
part 'auth_page_cubit.freezed.dart';

@injectable
class AuthPageCubit extends Cubit<AuthPageState> {
  AuthPageCubit() : super(AuthPageState());
}
