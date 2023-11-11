class Meeting {
  final String instructorProfile;
  final String instructorName;
  final String instructorContact;
  final String instructorPosition;
  final String meetingTime;
  final String meetingTitle;
  final String meetingDescription;
  final List<String> joinedAttendees;
  final int totalAttendees;

  Meeting({
    required this.instructorProfile,
    required this.instructorName,
    required this.instructorContact,
    required this.instructorPosition,
    required this.meetingTime,
    required this.meetingTitle,
    required this.meetingDescription,
    required this.joinedAttendees,
    required this.totalAttendees,
  });

  factory Meeting.fromJson(Map<String, dynamic> json) {
    return Meeting(
      instructorProfile: json['instructorProfile'],
      instructorName: json['instructorName'],
      instructorContact: json['instructorContact'],
      instructorPosition: json['instructorPosition'],
      meetingTime: json['meetingTime'],
      meetingTitle: json['meetingTitle'],
      meetingDescription: json['meetingDescription'],
      joinedAttendees: List<String>.from(json['joinedAttendees']),
      totalAttendees: json['totalAttendees'],
    );
  }
}
