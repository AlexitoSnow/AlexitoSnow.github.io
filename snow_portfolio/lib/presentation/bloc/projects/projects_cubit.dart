import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

import '../../../domain/models.dart';

part 'projects_state.dart';

class ProjectsCubit extends Cubit<ProjectsState> {
  ProjectsCubit() : super(ProjectsState());

  ScrollController scrollController = ScrollController();
  List<Project> get projectItems => Project.projectItems;
  PageController pageController = PageController(keepPage: true);
  int currentPage = 0;

  void onHover(int index, bool isHovering) {
    var hIndex = isHovering ? index : -1;
    emit(ProjectsState(hoveringIndex: hIndex));
  }
}
