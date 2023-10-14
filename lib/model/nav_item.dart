import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NavItem {
  final int id;
  final IconData icon;
  final String label;

  NavItem({required this.id, required this.icon, required this.label});
}

List<NavItem> navItems = [
  NavItem(id: 0, icon: FontAwesomeIcons.home, label: "홈"),
  NavItem(id: 1, icon: FontAwesomeIcons.newspaper, label: "동네생활"),
  NavItem(id: 2, icon: FontAwesomeIcons.facebookMessenger, label: "채팅"),
  NavItem(id: 3, icon: FontAwesomeIcons.appleAlt, label: "나의피치"),
];
