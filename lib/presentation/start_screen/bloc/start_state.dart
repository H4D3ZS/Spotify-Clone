// ignore_for_file: must_be_immutable

part of 'start_bloc.dart';

/// Represents the state of Start in the application.
class StartState extends Equatable {
  StartState({this.startModelObj});

  StartModel? startModelObj;

  @override
  List<Object?> get props => [
        startModelObj,
      ];
  StartState copyWith({StartModel? startModelObj}) {
    return StartState(
      startModelObj: startModelObj ?? this.startModelObj,
    );
  }
}
