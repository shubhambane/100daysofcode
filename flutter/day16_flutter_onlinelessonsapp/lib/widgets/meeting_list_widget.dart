import 'package:flutter/material.dart';
import 'package:image_stack/image_stack.dart';
import '../models/meeting.dart';

class MeetingWidget extends StatelessWidget {
  final List<Meeting> meetings;

  const MeetingWidget({
    super.key,
    required this.meetings,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: meetings.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, '/profile', arguments: [
              meetings[index].instructorProfile,
              meetings[index].instructorName,
              meetings[index].instructorContact,
              meetings[index].instructorPosition,
            ]);
          },
          child: Container(
            margin: const EdgeInsets.only(bottom: 20),
            padding: const EdgeInsets.symmetric(
              horizontal: 12,
              vertical: 18,
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(28),
              color: const Color(0XFF212124),
            ),
            child: Column(
              children: [
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  leading: CircleAvatar(
                    radius: 24,
                    backgroundImage:
                        NetworkImage(meetings[index].instructorProfile),
                  ),
                  trailing: TextButton.icon(
                    style: TextButton.styleFrom(
                      backgroundColor: const Color(0xFF2D2D31),
                      elevation: 0,
                    ),
                    onPressed: () {},
                    icon: const Icon(
                      Icons.schedule_outlined,
                      color: Colors.white,
                    ),
                    label: Text(
                      meetings[index].meetingTime,
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                ListTile(
                  contentPadding: EdgeInsets.zero,
                  title: Text(
                    meetings[index].meetingTitle,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  subtitle: Text(
                    meetings[index].meetingDescription,
                    style: const TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ImageStack(
                      imageList: meetings[index].joinedAttendees,
                      imageSource: ImageSource.Network,
                      imageRadius: 36,
                      imageCount: meetings[index].joinedAttendees.length,
                      totalCount: meetings[index].totalAttendees,
                      imageBorderWidth: 0,
                    ),
                    const CircleAvatar(
                      backgroundColor: Color(0XFFFFACE5),
                      child: Icon(
                        Icons.arrow_forward_outlined,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
