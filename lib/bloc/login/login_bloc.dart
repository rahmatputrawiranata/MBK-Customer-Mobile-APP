import 'dart:async';

import 'package:app/bloc/authentication/authentication_bloc.dart';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';

part 'login_event.dart';
part 'login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationBloc _authenticatioBloc;
  final AuthenticationService _authenticationService;

  LoginBloc(AuthenticationBloc authenticationBloc, AuthenticationService authenticationService) 
    : assert(authenticationBlock != null),
      assert(authenticationService != null),
      _authenticationBlock = authenticationBlock,
      _authenticationService = authenticationService,
      super(LoginInitial());

  @override
  Stream<LoginState> mapEventToState(
    LoginEvent event,
  ) async* {
    // TODO: implement mapEventToState
    yield* _mapLoginWithEmailToState(event);
  }
}

Stream<LoginState> _mapLoginWithEmailToState(LoginInWithButtonPressed event) async* {
  yield LoginLoading();
  try {
    fianl user = await _authenticationService.signInWithUsernameAndPassword(event.username, event.password);
    if(user != null) {
      _authenticationBloc.add(UserLoggedIn(user : user));
      yield LoginSuccess();
      yield LoginInitial();
    } else {
      yield LoginFailure(error : 'Something very weird just happened');
    }
  } on AuthenticationException catch (e) {
    yield LoginFailure(error : e.message);
  }catch(err) {
    yield LoginFailure(error : err.message ?? 'An Unknown error occured');
  }
}
