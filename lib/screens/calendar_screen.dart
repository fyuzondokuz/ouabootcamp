import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';

class Task {
  String name;
  bool isCompleted;
  DateTime date;

  Task(this.name, {this.isCompleted = false, required this.date});
}

class CalendarScreen extends StatefulWidget {
  const CalendarScreen({super.key});

  @override
  State<CalendarScreen> createState() => _CalendarScreenState();
}

class _CalendarScreenState extends State<CalendarScreen> {
  DateTime today = DateTime.now();
  List<Task> tasks = [];
  String taskName = '';
  DateTime selectedDate = DateTime.now();

  void _onDaySelected(DateTime day, DateTime focusedDay) {
    setState(() {
      today = day;
    });
  }

  void _addTask() async {
    if (taskName.isNotEmpty) {
      DateTime? pickedDate = await showDatePicker(
          context: context,
          initialDate: selectedDate,
          firstDate: DateTime(2010),
          lastDate: DateTime(2030)
      );
      if (pickedDate != null) {
        setState(() {
          Task task = Task(taskName, date: pickedDate);
          tasks.add(task);
          taskName = '';
          selectedDate = pickedDate;
        });
      }
    }
  }


  void _deleteTask(int index) {
    setState(() {
      tasks.removeAt(index);
    });
  }

  void _toggleTaskCompletion(int index) {
    setState(() {
      tasks[index].isCompleted = !tasks[index].isCompleted;
    });
  }

  @override
  Widget build(BuildContext context) {
    initializeDateFormatting('tr');
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Takvim"),
      ),
      body: content(),
    );
  }

  Widget content() {
    return Column(
      children: [
        Container(
            child: TableCalendar(
              locale: "tr_TR",
              rowHeight: 43,
              headerStyle:
              HeaderStyle(formatButtonVisible: false, titleCentered: true),
              availableGestures: AvailableGestures.all,
              selectedDayPredicate: (day) => isSameDay(day, today),
              focusedDay: today,
              firstDay: DateTime.utc(2010, 10, 16),
              lastDay: DateTime.utc(2030, 3, 14),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  today = selectedDay;
                });
              },
            )
        ),

        SizedBox(height: 20),
        Text(
          "Görevler:",
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
        ),
        SizedBox(height: 10),
        Expanded(
          child: ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              Task task = tasks[index];
              return GestureDetector(
                onTap: () {
                  _toggleTaskCompletion(index);
                },
                child: Column(
                  children: [
                    ListTile(
                      leading: Checkbox(
                        value: task.isCompleted,
                        onChanged: (value) {
                          _toggleTaskCompletion(index);
                        },
                      ),
                      title: Text(
                        task.name,
                        style: TextStyle(
                          decoration: task.isCompleted
                              ? TextDecoration.lineThrough
                              : TextDecoration.none,
                        ),
                      ),
                      subtitle: Text(
                        DateFormat('dd.MM.yyyy').format(task.date),
                        style: TextStyle(fontSize: 12),
                      ),
                      trailing: IconButton(
                        icon: Icon(Icons.delete),
                        onPressed: () {
                          _deleteTask(index);
                        },
                      ),
                    ),
                    Divider(
                      color: Colors.grey[300],
                      thickness: 0.8,
                      indent: 16,
                      endIndent: 16,
                    )
                  ],
                ),
              );
            },
          ),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TextField(
            onChanged: (value) {
              setState(() {
                taskName = value;
              });
            },
            onSubmitted: (value) {
              _addTask();
            },
            decoration: InputDecoration(
              labelText: "Görev Ekle",
              suffixIcon: IconButton(
                icon: Icon(Icons.add),
                onPressed: _addTask,
              ),
            ),
          ),
        ),
      ],
    );
  }
}