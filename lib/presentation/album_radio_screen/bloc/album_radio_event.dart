// ignore_for_file: must_be_immutable

part of 'album_radio_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///AlbumRadio widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class AlbumRadioEvent extends Equatable {}

/// Event that is dispatched when the AlbumRadio widget is first created.
class AlbumRadioInitialEvent extends AlbumRadioEvent {
  @override
  List<Object?> get props => [];
}
