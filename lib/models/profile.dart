import '../constants/app_string.dart';

class Profile {
  final String fullName;
  final String email;
  final String phoneNumber;
  final String profilePicture;
  final Map<String, String> social;

  const Profile({
    required this.fullName,
    required this.email,
    required this.phoneNumber,
    required this.profilePicture,
    required this.social,
  });

  List<String> get _nameList => fullName.split(" ").toList();
  String get firstName => _nameList.first;
  String get lastName => _nameList.last;
}

var myProfile = const Profile(
  fullName: "Kehinde Babawale HASSAN",
  email: "sirkenny.hk@gmil.com",
  phoneNumber: "08134036308",
  profilePicture: profilePicture,
  social: {
    "github": "https://github.com/usseiin",
  },
);

// class Social {
//   final String name;
//   final String link;

//   Social(this.name, this.link);
// }
