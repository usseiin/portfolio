// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ussein_portfolio/enum/menu.dart';
import 'package:ussein_portfolio/ui/services/view_resume.dart';

final appState = StateNotifierProvider<AppState, Menu>(
  (ref) {
    return AppState();
  },
);

class AppState extends StateNotifier<Menu> {
  AppState() : super(Menu.introduction);
  final ViewResume _viewResume = AppViewResume();

  void showResume() => _viewResume.downloadResume();
  void update(Menu menu) => state = menu;
}
