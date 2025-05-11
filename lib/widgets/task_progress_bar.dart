import 'package:flutter/material.dart';

class TaskProgress extends StatelessWidget {
  final int totalTugas;
  final int tugasSelesai;

  const TaskProgress({
    required this.totalTugas,
    required this.tugasSelesai,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double progress = tugasSelesai / totalTugas;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Progress Tugas Hari Ini',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 8),
        ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 14,
            backgroundColor: Colors.white12,
            valueColor: const AlwaysStoppedAnimation<Color>(Colors.greenAccent),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          '$tugasSelesai dari $totalTugas tugas selesai',
          style: const TextStyle(color: Colors.white70, fontSize: 14),
        ),
      ],
    );
  }
}
