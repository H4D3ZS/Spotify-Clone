// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';

/// This class defines the variables used in the [playlist_search_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class PlaylistSearchModel extends Equatable {
  PlaylistSearchModel({this.viewhierarchyItemList = const []}) {}

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  PlaylistSearchModel copyWith(
      {List<ViewhierarchyItemModel>? viewhierarchyItemList}) {
    return PlaylistSearchModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList];
}
