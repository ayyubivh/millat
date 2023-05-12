import 'package:bloc/bloc.dart';
import 'package:millat/resources/authentication/bloc/service/auth_provider.dart';

abstract class AuthEvent {}

class AppStarted extends AuthEvent {}

class LoggedIn extends AuthEvent {
  final String email;
  final String password;

  LoggedIn(this.email, this.password);
}

class AuthState {}

class AuthInitial extends AuthState {}

class AuthLoading extends AuthState {}

class AuthSuccess extends AuthState {}

class AuthFailure extends AuthState {}

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final AuthProvider apiProvider;

  AuthBloc(this.apiProvider) : super(AuthInitial());

  @override
  Stream<AuthState> mapEventToState(AuthEvent event) async* {
    if (event is AppStarted) {
      yield AuthLoading();

      try {
        final isAuthenticated = await apiProvider.isAuthenticated();

        if (isAuthenticated) {
          yield AuthSuccess();
        } else {
          yield AuthFailure();
        }
      } catch (_) {
        yield AuthFailure();
      }
    } else if (event is LoggedIn) {
      yield AuthLoading();

      try {
        await apiProvider.login(event.email, event.password);

        yield AuthSuccess();
      } catch (_) {
        yield AuthFailure();
      }
    }
  }
}
