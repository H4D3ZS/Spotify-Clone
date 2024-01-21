// ignore_for_file: must_be_immutable

part of 'listening_on_bloc.dart';

/// Represents the state of ListeningOn in the application.
class ListeningOnState extends Equatable {
  ListeningOnState({this.listeningOnModelObj});

  ListeningOnModel? listeningOnModelObj;

  @override
  List<Object?> get props => [
        listeningOnModelObj,
      ];
  ListeningOnState copyWith({ListeningOnModel? listeningOnModelObj}) {
    return ListeningOnState(
      listeningOnModelObj: listeningOnModelObj ?? this.listeningOnModelObj,
    );
  }
}
