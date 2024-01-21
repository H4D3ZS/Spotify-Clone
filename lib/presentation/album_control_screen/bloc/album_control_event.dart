// ignore_for_file: must_be_immutable

part of 'album_control_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AlbumControl widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlbumControlEvent extends Equatable {}

/// Event that is dispatched when the AlbumControl widget is first created.
class AlbumControlInitialEvent extends AlbumControlEvent {
  @override
  List<Object?> get props => [];
}
