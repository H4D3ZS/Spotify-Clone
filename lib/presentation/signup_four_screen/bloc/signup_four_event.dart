// ignore_for_file: must_be_immutable

part of 'signup_four_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SignupFour widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupFourEvent extends Equatable {}

/// Event that is dispatched when the SignupFour widget is first created.
class SignupFourInitialEvent extends SignupFourEvent {
  @override
  List<Object?> get props => [];
}
