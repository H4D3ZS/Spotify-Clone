// ignore_for_file: must_be_immutable

part of 'scanning_for_spotify_codes_bloc.dart';

/// Represents the state of ScanningForSpotifyCodes in the application.
class ScanningForSpotifyCodesState extends Equatable {
  ScanningForSpotifyCodesState({this.scanningForSpotifyCodesModelObj});

  ScanningForSpotifyCodesModel? scanningForSpotifyCodesModelObj;

  @override
  List<Object?> get props => [
        scanningForSpotifyCodesModelObj,
      ];
  ScanningForSpotifyCodesState copyWith(
      {ScanningForSpotifyCodesModel? scanningForSpotifyCodesModelObj}) {
    return ScanningForSpotifyCodesState(
      scanningForSpotifyCodesModelObj: scanningForSpotifyCodesModelObj ??
          this.scanningForSpotifyCodesModelObj,
    );
  }
}
