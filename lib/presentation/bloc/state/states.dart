import 'package:untitled/presentation/bloc/models/wine.dart';

abstract class WineState {}

class WineInitial extends WineState {}

class WineLoading extends WineState {}

class WineLoaded extends WineState {
  final List<Wine> wines;

  WineLoaded(this.wines);
}

class WineError extends WineState {
  final String message;

  WineError(this.message);
}

