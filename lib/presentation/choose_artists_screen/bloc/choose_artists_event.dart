// ignore_for_file: must_be_immutable

part of 'choose_artists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseArtists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseArtistsEvent extends Equatable {}

/// Event that is dispatched when the ChooseArtists widget is first created.
class ChooseArtistsInitialEvent extends ChooseArtistsEvent {
  @override
  List<Object?> get props => [];
}
