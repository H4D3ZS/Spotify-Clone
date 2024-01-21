// ignore_for_file: must_be_immutable

part of 'scanning_for_spotify_codes_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ScanningForSpotifyCodes widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScanningForSpotifyCodesEvent extends Equatable {}

/// Event that is dispatched when the ScanningForSpotifyCodes widget is first created.
class ScanningForSpotifyCodesInitialEvent extends ScanningForSpotifyCodesEvent {
  @override
  List<Object?> get props => [];
}
