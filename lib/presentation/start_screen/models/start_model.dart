// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [start_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class StartModel extends Equatable {
  StartModel() {}

  StartModel copyWith() {
    return StartModel();
  }

  @override
  List<Object?> get props => [];
}
