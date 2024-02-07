import 'package:flutter/material.dart';
import 'package:snow_portfolio/config/config.dart';
import 'package:snow_portfolio/domain/models/activity_model.dart';

class ActivityList extends StatelessWidget {
  final List<Activity> activities;
  const ActivityList(
    this.activities, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    isPhone = context.width <= 800;
    return SizedBox(
      height: context.height,
      child: ListView(
        children: List.generate(
          activities.length,
          (index) {
            return ExpansionTile(
              title: title(activities[index].name!),
              subtitle: institution(activities[index].institution!),
              trailing: date(activities[index].date!),
              initiallyExpanded: !isPhone,
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
      ),
    );
  }

  Text institution(String institution) {
    return Text(
      institution,
      style: TextStyle(
          fontSize: fontSizes[isPhone]! - 3, fontWeight: FontWeight.bold),
    );
  }

  Text title(String name) {
    return Text(
      name,
      textScaler: TextScaler.linear(textScaleFactor),
      style:
          TextStyle(fontSize: fontSizes[isPhone], fontWeight: FontWeight.bold),
    );
  }

  Chip date(String date) {
    return Chip(
      label: Text(
        date,
      ),
      avatar: const Icon(Icons.calendar_month_rounded),
    );
  }
}

const Map<bool, double> fontSizes = {
  true: 21,
  false: 25,
};

double textScaleFactor = 0;
