// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ussein_portfolio/enum/menu.dart';

final appState = StateNotifierProvider<AppState, Menu>((ref) => AppState());

class AppState extends StateNotifier<Menu> {
  AppState() : super(Menu.home);

  void update(Menu menu) => state = menu;
}
