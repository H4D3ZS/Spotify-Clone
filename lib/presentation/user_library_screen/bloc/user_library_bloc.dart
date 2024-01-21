import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userlibrary_item_model.dart';
import 'package:spotify_clone/presentation/user_library_screen/models/user_library_model.dart';
part 'user_library_event.dart';
part 'user_library_state.dart';

/// A bloc that manages the state of a UserLibrary according to the event that is dispatched to it.
class UserLibraryBloc extends Bloc<UserLibraryEvent, UserLibraryState> {
  UserLibraryBloc(UserLibraryState initialState) : super(initialState) {
    on<UserLibraryInitialEvent>(_onInitialize);
  }

  _onInitialize(
    UserLibraryInitialEvent event,
    Emitter<UserLibraryState> emit,
  ) async {
    emit(state.copyWith(
        userLibraryModelObj: state.userLibraryModelObj
            ?.copyWith(userlibraryItemList: fillUserlibraryItemList())));
  }

  List<UserlibraryItemModel> fillUserlibraryItemList() {
    return [
      UserlibraryItemModel(
          userImage: ImageConstant.imgScreenShot2021121050x50,
          userName: "Shazam",
          likesCount: "7 likes"),
      UserlibraryItemModel(
          userImage: ImageConstant.imgScreenShot202112102,
          userName: "5 likes",
          likesCount: "Study")
    ];
  }
}
