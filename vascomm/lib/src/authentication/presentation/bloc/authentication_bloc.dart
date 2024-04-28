import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import '../../domain/usecases/create_user.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc
    extends Bloc<AuthenticationEvent, AuthenticationState> {
  AuthenticationBloc(
      {required SignIn signIn})
      : _signIn = signIn,
        super(AuthenticationInitial()) {
    on<EventAuthentication>(_signInHandler);
  }

  final SignIn _signIn;

  Future<void> _signInHandler(
      EventAuthentication event, Emitter<AuthenticationState> emit) async {
    emit(AuthenticationLoading());

    final result = await _signIn(
        SignInParams(email: event.email, password: event.password));
    result.fold((failure) {
     return emit(AuthenticationError(
          '${failure.statusCode}' 'Error: ${failure.errorMessage}'));
    }, (data) {
     return emit(AuthenticationSuccess());
    });
  }
}
