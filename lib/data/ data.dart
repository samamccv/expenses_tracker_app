import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

List<Map<String, dynamic>> transactionData = [
  {
    'icon': Icon(FontAwesomeIcons.burger, color: Colors.white,),
    'color': Color.fromARGB(184, 131, 26, 187),
    'name': 'Food',
    'total amount': '-\$4500',
    'date': 'Today',
  },

  {
    'icon': Icon(FontAwesomeIcons.bagShopping, color: Colors.white,),
    'color': Color.fromARGB(184, 210, 24, 198),
    'name': 'Shopping',
    'total amount': '-\$2500',
    'date': 'Today',
  },

  {
    'icon': Icon(FontAwesomeIcons.kitMedical, color: Colors.white,),
    'color': Color.fromARGB(184, 26, 202, 88),
    'name': 'Health',
    'total amount': '-\$140',
    'date': 'Yesterday',
  },
  {
    'icon': Icon(FontAwesomeIcons.plane, color: Colors.white,),
    'color': Color.fromARGB(248, 28, 35, 183),
    'name': 'Travel',
    'total amount': '-\$1240',
    'date': 'Yesterday',
  },
];
