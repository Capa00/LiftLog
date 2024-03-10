import 'dart:convert';

import 'package:fit_forge/models/gym_tab.dart';
import 'package:shared_preferences/shared_preferences.dart';

class UserPreferencesKeys {
  static const tabs = "tabs";
}


class UserPreferences {
  static late final UserPreferences _instance;
  factory UserPreferences() {return _instance;}

  late final List<GymTab> tabs;

  UserPreferences._internal(this.tabs);



  static Future<void> init() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<GymTab> tabs = json.decode(prefs.getString(UserPreferencesKeys.tabs) ?? "[]").map((
        String jsonGymTab) {
      return GymTab.fromJson(json.decode(jsonGymTab));
    }).toList();

    _instance = UserPreferences._internal(tabs);
  }

  static Future<void> save() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(
      UserPreferencesKeys.tabs,
      json.encode(
        _instance.tabs.map(
          (GymTab gymTab) { return json.encode(gymTab.toJson()); }
        ).toList()
      )
    );
  }
}