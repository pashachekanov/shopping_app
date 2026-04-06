import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure();
}

class ServerFailure extends Failure {
  const ServerFailure({
    required this.serverResponse,
    this.biometricLoginError = false,
  });

  final String serverResponse;
  final bool biometricLoginError;
  @override
  List<Object?> get props => [serverResponse];
}

class PlatformFailure extends Failure {
  const PlatformFailure({required this.platformResponse});

  final String platformResponse;
  @override
  List<Object?> get props => [platformResponse];
}

class CacheFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class NoTokenFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class UnknownFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class PermissionFailure extends Failure {
  @override
  List<Object?> get props => [];
}

class TimeoutFailure extends Failure {
  @override
  List<Object?> get props => [];
}
