// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'userlibrary_item_model.dart';

/// This class defines the variables used in the [user_library_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class UserLibraryModel extends Equatable {
  UserLibraryModel({this.userlibraryItemList = const []}) {}

  List<UserlibraryItemModel> userlibraryItemList;

  UserLibraryModel copyWith({List<UserlibraryItemModel>? userlibraryItemList}) {
    return UserLibraryModel(
      userlibraryItemList: userlibraryItemList ?? this.userlibraryItemList,
    );
  }

  @override
  List<Object?> get props => [userlibraryItemList];
}
