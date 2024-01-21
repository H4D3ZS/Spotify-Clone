// ignore_for_file: must_be_immutable

part of 'playlist_search_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///PlaylistSearch widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class PlaylistSearchEvent extends Equatable {}

/// Event that is dispatched when the PlaylistSearch widget is first created.
class PlaylistSearchInitialEvent extends PlaylistSearchEvent {
  @override
  List<Object?> get props => [];
}
