// ignore_for_file: must_be_immutable

part of 'user_library_bloc.dart';

/// Represents the state of UserLibrary in the application.
class UserLibraryState extends Equatable {
  UserLibraryState({this.userLibraryModelObj});

  UserLibraryModel? userLibraryModelObj;

  @override
  List<Object?> get props => [
        userLibraryModelObj,
      ];
  UserLibraryState copyWith({UserLibraryModel? userLibraryModelObj}) {
    return UserLibraryState(
      userLibraryModelObj: userLibraryModelObj ?? this.userLibraryModelObj,
    );
  }
}
