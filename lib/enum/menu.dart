enum Menu {
  home("Home"),
  about("About"),
  project("Project");

  final String title;
  const Menu(this.title);
}

String menuValueToString(Menu value) {
  return value.title;
}
