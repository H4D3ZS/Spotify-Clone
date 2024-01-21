// ignore_for_file: must_be_immutable

part of 'song_share_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SongShare widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SongShareEvent extends Equatable {}

/// Event that is dispatched when the SongShare widget is first created.
class SongShareInitialEvent extends SongShareEvent {
  @override
  List<Object?> get props => [];
}
