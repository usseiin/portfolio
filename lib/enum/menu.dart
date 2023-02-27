enum Menu {
  introduction("Introduction"),
  project("Project");

  final String title;
  const Menu(this.title);
}

String menuValueToString(Menu value) {
  return value.title;
}
