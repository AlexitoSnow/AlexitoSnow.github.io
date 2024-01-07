import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:snow_portfolio/app/models/activity_model.dart';

class ActivityList extends GetView {
  final List<Activity> activities;
  const ActivityList(
    this.activities, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: List.generate(
        activities.length,
        (index) {
          return ExpansionTile(
            title: title(activities[index].name!),
            subtitle: institution(activities[index].institution!),
            trailing: dates(
                startDate: activities[index].startDate!,
                endDate: activities[index].endDate!),
            initiallyExpanded: true,
            expandedAlignment: Alignment.centerLeft,
            children: [
              Text(
                activities[index].description!,
                style: const TextStyle(fontSize: 18),
              ),
            ],
          );
        },
      ),
    );
  }

  Text institution(String institution) {
    return Text(
      institution,
      style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
    );
  }

  Text title(String name) {
    return Text(
      name,
      style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
    );
  }

  Chip dates({required DateTime startDate, required DateTime endDate}) {
    String today = DateFormat('dd-MM-yyyy').format(DateTime.now());
    String start = DateFormat('dd-MM-yyyy').format(startDate);
    String end = DateFormat('dd-MM-yyyy').format(endDate);
    return Chip(
      label: Text(
        '$start to ${end == today ? 'Present' : end}',
      ),
      avatar: const Icon(Icons.calendar_month_rounded),
    );
  }
}
