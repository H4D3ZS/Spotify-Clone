// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'eightytwo_item_model.dart';
import 'topsongs_item_model.dart';
import 'editorspicks_item_model.dart';

/// This class defines the variables used in the [home_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.eightytwoItemList = const [],
    this.topsongsItemList = const [],
    this.editorspicksItemList = const [],
  }) {}

  List<EightytwoItemModel> eightytwoItemList;

  List<TopsongsItemModel> topsongsItemList;

  List<EditorspicksItemModel> editorspicksItemList;

  HomeModel copyWith({
    List<EightytwoItemModel>? eightytwoItemList,
    List<TopsongsItemModel>? topsongsItemList,
    List<EditorspicksItemModel>? editorspicksItemList,
  }) {
    return HomeModel(
      eightytwoItemList: eightytwoItemList ?? this.eightytwoItemList,
      topsongsItemList: topsongsItemList ?? this.topsongsItemList,
      editorspicksItemList: editorspicksItemList ?? this.editorspicksItemList,
    );
  }

  @override
  List<Object?> get props =>
      [eightytwoItemList, topsongsItemList, editorspicksItemList];
}
