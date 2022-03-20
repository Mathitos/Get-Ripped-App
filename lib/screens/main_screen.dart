import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get_ripped/screens/program_screen.dart';
import 'package:get_ripped/screens/timer_screen.dart';

import '../data_class/program.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  List<Widget> _widgetOptions = [];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Program getUserProgram() {
    return Program.fromJson(jsonDecode('''
      {
      "exercises": [
        {
          "name": "DeadLift",
          "cooldown": "3-4min",
          "sets": "5",
          "weightProgressionEntries": [
            {"day": "1969-07-20 20:18:04Z", "reps": "7", "weight": "20 Kg"}
          ]
        }
      ]
    }
    '''));
  }

  void initializeWidgetOptions(Program program) {
    _widgetOptions = <Widget>[
      ProgramScreen(
        program: program,
      ),
      TimerScreen(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    Program program = getUserProgram();
    initializeWidgetOptions(program);

    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.fitness_center_outlined),
            label: 'Program',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm),
            label: 'Timer',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
    );
  }
}
