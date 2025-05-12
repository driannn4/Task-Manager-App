import 'package:flutter/material.dart';

class DailyTodoList extends StatefulWidget {
  const DailyTodoList({super.key});

  @override
  State<DailyTodoList> createState() => _DailyTodoListState();
}

class _DailyTodoListState extends State<DailyTodoList> {
  final List<Map<String, dynamic>> _tasks = [
    {'title': 'Buat laporan harian', 'done': false},
    {'title': 'Kerjakan modul WP3', 'done': false},
    {'title': 'Rekap nilai absen', 'done': false},
  ];

  void _toggleTask(int index) {
    setState(() {
      _tasks[index]['done'] = !_tasks[index]['done'];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: _tasks.map((task) {
        final index = _tasks.indexOf(task);
        return Card(
          color: task['done'] ? Colors.green.withOpacity(0.2) : Colors.white.withOpacity(0.1),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          child: ListTile(
            leading: Icon(
              task['done'] ? Icons.check_circle : Icons.radio_button_unchecked,
              color: task['done'] ? Colors.greenAccent : Colors.white54,
            ),
            title: Text(
              task['title'],
              style: TextStyle(
                color: Colors.white,
                decoration: task['done'] ? TextDecoration.lineThrough : null,
              ),
            ),
            onTap: () => _toggleTask(index),
          ),
        );
      }).toList(),
    );
  }
}
