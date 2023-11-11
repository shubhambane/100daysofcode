import 'dart:convert';
import 'package:flutter/services.dart';
import '../models/meeting.dart';

class MeetingService {
  Future<List<Meeting>> fetchMeetings() async {
    final jsonString = await rootBundle.loadString('assets/data/meetings.json');
    final List<dynamic> jsonData = json.decode(jsonString);
    return jsonData.map((data) => Meeting.fromJson(data)).toList();
  }
}
