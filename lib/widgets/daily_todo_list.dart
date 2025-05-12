import 'package:flutter/material.dart';

class DailyTodoList extends StatelessWidget {
  final List<String> tasks;

  const DailyTodoList({super.key, required this.tasks});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: tasks.map((task) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0),
          child: Row(
            children: [
              const Icon(Icons.check_circle_outline, color: Colors.white70, size: 20),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  task,
                  style: const TextStyle(color: Colors.white70, fontSize: 14),
                ),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
