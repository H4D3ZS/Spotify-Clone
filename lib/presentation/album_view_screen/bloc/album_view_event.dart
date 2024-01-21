// ignore_for_file: must_be_immutable

part of 'album_view_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AlbumView widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlbumViewEvent extends Equatable {}

/// Event that is dispatched when the AlbumView widget is first created.
class AlbumViewInitialEvent extends AlbumViewEvent {
  @override
  List<Object?> get props => [];
}
