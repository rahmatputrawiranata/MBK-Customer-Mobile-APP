import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'authentication_event.dart';
part 'authentication_state.dart';

class AuthenticationBloc extends Bloc<AuthenticationEvent, AuthenticationState> {
  // AuthenticationBloc() : super(AuthenticationInitial());

  // @override
  // Stream<AuthenticationState> mapEventToState(
  //   AuthenticationEvent event,
  // ) async* {
  //   // TODO: implement mapEventToState
  // }

  final AuthenticationService _authenticationService;

  AuthenticationBloc(AuthenticationService authenticationService)
    :assert(authenticationService != null),
    _authenticationService = authenticationService,
    super(AuthenticationInitial());

    @override
    Stream<AuthenticationState> mapEventToState(AuthenticationEvent event) async* {
      if(event is AppLoaded) {
        yield* _mapAppLoadedState(event);
      }

      if(event is UserLogedIn) {
        yield* _mapuserLoggedInToState(event);
      }

      if(event is UserLoggedOut) {
        yield* _mapUserLoggedOutToState(event);
      }
    }

    Stream<AuthenticationState> _mapAppLoadedToState(AppLoaded event) async* {
      yield AuthenticationLoading();
      try {
        awaitFuture.delayed(Duration(miliseconda : 500));
        final currentuser = await _authenticationSerice.getCurrentUser();

        if(currentUser != null) {
          yield AuthenticationAuthenticated(user : currentUser);
        }else{
          yield AuthenticationNotAuthenticated();
        }
      }catch(e){
        yield AuthenticationFailure(message : e.message ?? 'An Unknow Error occured');
      }
    }

    Stream<AuthenticationState> _mapUserLoggedInToState(UserLoggedIn event) async* {
      yield AuthenticationAuthenticated(user: event.user);
    }

    Stream<AuthenticationState> _mapUserLoggedOutToState(UserLoggedOut event) async* {
      await _authenticationService.signOut();
      yield AuthenticationNotAuthenticated();
    }
}
