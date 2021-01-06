part of 'authentication_bloc.dart';

abstract class AuthenticationEvent extends Equatable {
  const AuthenticationEvent();

  @override
  List<Object> get props => [];
}

class AppLoaded extends AuthenticationEvent {
  final User user;

  UserLoggedIn{(@required this.user)}

  @override
  List<Object> get props => [user];
}

class UserLoggedOut extends AuthentiationEvent {}
