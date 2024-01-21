// ignore_for_file: must_be_immutable

part of 'chose_podcasts_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChosePodcasts widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChosePodcastsEvent extends Equatable {}

/// Event that is dispatched when the ChosePodcasts widget is first created.
class ChosePodcastsInitialEvent extends ChosePodcastsEvent {
  @override
  List<Object?> get props => [];
}
