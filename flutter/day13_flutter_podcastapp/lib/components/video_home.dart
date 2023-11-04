import 'package:flutter/material.dart';

class Video {
  final String videoThumbnail;
  final String channelArt;
  final String videoTitle;
  final String channelName;
  final String totalViews;
  final String timeAgo;
  final bool isSubscribed;

  Video({
    required this.videoThumbnail,
    required this.channelArt,
    required this.videoTitle,
    required this.channelName,
    required this.totalViews,
    required this.timeAgo,
    required this.isSubscribed,
  });
}

class VideoList extends StatelessWidget {
  final List<Video> videos = [
    Video(
      videoThumbnail:
          'https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&q=80&w=1459&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      channelArt:
          'https://images.unsplash.com/photo-1531384441138-2736e62e0919?auto=format&fit=crop&q=80&w=1374&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      videoTitle: '100daysofcode in Flutter | Complete design to code tutorial',
      channelName: 'Shubham Bane',
      totalViews: '1M views',
      timeAgo: '2 days ago',
      isSubscribed: true,
    ),
    Video(
      videoThumbnail:
          'https://images.unsplash.com/photo-1497015455546-1da71faf8d06?auto=format&fit=crop&q=80&w=1632&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      channelArt:
          'https://images.unsplash.com/photo-1566753323558-f4e0952af115?auto=format&fit=crop&q=80&w=1442&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
      videoTitle: 'Video 2 Title',
      channelName: 'Channel 2',
      totalViews: '500K views',
      timeAgo: '1 week ago',
      isSubscribed: false,
    ),
  ];

  VideoList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: videos.length,
      itemBuilder: (context, index) {
        final video = videos[index];
        return VideoItem(video: video);
      },
    );
  }
}

class VideoItem extends StatelessWidget {
  final Video video;

  const VideoItem({Key? key, required this.video}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/video');
      },
      child: Padding(
        padding: const EdgeInsets.only(
          top: 12,
          bottom: 4,
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                  image: NetworkImage(video.videoThumbnail),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            ListTile(
              contentPadding: EdgeInsets.zero,
              leading: CircleAvatar(
                radius: 20,
                backgroundImage: NetworkImage(video.channelArt),
              ),
              title: Text(
                video.videoTitle,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 4.0),
                child: RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      color: Colors.black38,
                      fontSize: 10,
                    ),
                    children: [
                      TextSpan(text: '${video.channelName} • '),
                      TextSpan(text: '${video.totalViews} • '),
                      TextSpan(text: video.timeAgo),
                    ],
                  ),
                ),
              ),
              trailing: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 0,
                  ),
                  backgroundColor:
                      video.isSubscribed ? Colors.red : Colors.black,
                  elevation: 0,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: Text(
                  video.isSubscribed ? 'Subscribed' : 'Subscribe',
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 10,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
