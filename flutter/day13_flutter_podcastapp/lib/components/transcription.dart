import 'package:flutter/material.dart';

class VideoSummary {
  final String timestamp;
  final String content;

  VideoSummary(this.timestamp, this.content);
}

class VideoSummaryWidget extends StatelessWidget {
  final List<VideoSummary> summaries = [
    VideoSummary("00:00", "Introduction to 100daysofcode challenge"),
    VideoSummary("03:15", "Setting clear goals for your coding journey"),
    VideoSummary("06:45", "Choosing programming languages and tools"),
    VideoSummary("09:20", "Building your coding portfolio"),
    VideoSummary("12:05", "Finding online coding communities for support"),
    VideoSummary("15:30", "Staying motivated and overcoming challenges"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      cacheExtent: 1000,
      shrinkWrap: true,
      itemCount: summaries.length,
      itemBuilder: (context, index) {
        final summary = summaries[index];
        return VideoSummaryBlock(
          summary.timestamp,
          summary.content,
        );
      },
    );
  }
}

class VideoSummaryBlock extends StatefulWidget {
  final String timestamp;
  final String content;

  VideoSummaryBlock(this.timestamp, this.content);

  @override
  _VideoSummaryBlockState createState() => _VideoSummaryBlockState();
}

class _VideoSummaryBlockState extends State<VideoSummaryBlock> {
  bool isExpanded = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          leading: Text(
            widget.timestamp,
            style: TextStyle(color: Colors.blue),
          ),
          title: Text(widget.content),
          onTap: () {
            setState(() {
              isExpanded = !isExpanded;
            });
          },
        ),
        if (isExpanded)
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla ut lectus vel dolor vulputate pellentesque. Suspendisse tincidunt arcu vitae purus posuere, a ultricies justo aliquam. Donec sagittis erat odio, a laoreet nisl laoreet non. Integer semper dui sed augue dignissim, eu laoreet sem finibus.",
            ),
          ),
        Divider(),
      ],
    );
  }
}
