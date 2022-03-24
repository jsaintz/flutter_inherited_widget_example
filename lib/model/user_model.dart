import 'package:flutter/widgets.dart';

class UserModel extends InheritedWidget {
  final String name;
  final String imgAvatar;
  final String bithDate;

  const UserModel({
    required Key? key,
    required this.name,
    required this.imgAvatar,
    required this.bithDate,
    required Widget child,
  }) : super(key: key, child: child);

  @override
  bool updateShouldNotify(covariant UserModel oldWidget) {
    return name != oldWidget.name || imgAvatar != oldWidget.imgAvatar || bithDate != oldWidget.bithDate;
  }

  static UserModel of(BuildContext context) {
    var userModel = context.dependOnInheritedWidgetOfExactType<UserModel>();
    assert(userModel != null, 'UserModel not exits in BuildContext');

    return userModel!;
  }
}
