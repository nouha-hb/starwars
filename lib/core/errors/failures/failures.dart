// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Failure extends Equatable {
  String? message;
  @override
  List<Object?> get props => [];
}

class ServerFailure extends Failure {
  final String? message;

  ServerFailure({this.message});
}

class ConnectionFailure extends Failure {}

class NotAuthorizedFailure extends Failure {}
