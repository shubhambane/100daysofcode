import 'package:choice/choice.dart';
import 'package:flutter/material.dart';
import 'package:material_symbols_icons/symbols.dart';

class VideoView extends StatefulWidget {
  const VideoView({super.key});

  @override
  State<VideoView> createState() => _VideoViewState();
}

class _VideoViewState extends State<VideoView> {
  double videoProgress = 0.0;
  List<String> choices = [
    'Summary',
    'Insights',
  ];

  String? selectedValue;

  void setSelectedValue(String? value) {
    setState(() => selectedValue = value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: const EdgeInsets.only(
            left: 14.0,
          ),
          child: CircleAvatar(
            backgroundColor: Colors.black.withOpacity(0.2),
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Symbols.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          IconButton(
            style: ButtonStyle(
              shape: MaterialStateProperty.all(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              backgroundColor: MaterialStateProperty.all(
                Colors.black.withOpacity(0.2),
              ),
            ),
            onPressed: () {},
            icon: const Icon(
              Symbols.more_vert,
              color: Colors.white,
            ),
          ),
          const SizedBox(width: 12),
        ],
      ),
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            pinned: true,
            expandedHeight: 200.0,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.network(
                'https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&q=80&w=1459&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                fit: BoxFit.cover,
              ),
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(0),
              child: VideoProgressElement(
                progress: videoProgress,
                onChanged: (value) {
                  setState(
                    () {
                      videoProgress = value;
                    },
                  );
                },
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: const Text(
                    'Shubham Bane discusses the latest updates in 100daysofcode challenge',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 4.0),
                    child: RichText(
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black38,
                          fontSize: 14,
                        ),
                        children: [
                          TextSpan(text: '138K Views • '),
                          TextSpan(text: '3 weeks ago • '),
                          TextSpan(text: '100daysofcode'),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  leading: const CircleAvatar(
                    radius: 20,
                    backgroundImage: NetworkImage(
                      'https://images.unsplash.com/photo-1485846234645-a62644f84728?auto=format&fit=crop&q=80&w=1459&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
                    ),
                  ),
                  title: RichText(
                    text: const TextSpan(
                      children: [
                        TextSpan(
                          text: 'Bane Inc',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        WidgetSpan(child: SizedBox(width: 10)),
                        TextSpan(
                          text: '298K',
                          style: TextStyle(
                            color: Colors.black38,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Choice<String>.inline(
                    multiple: false,
                    clearable: false,
                    value: ChoiceSingle.value(selectedValue),
                    onChanged: ChoiceSingle.onChanged(setSelectedValue),
                    itemCount: choices.length,
                    itemBuilder: (state, i) {
                      return ChoiceChip(
                        side: const BorderSide(
                          color: Colors.transparent,
                        ),
                        elevation: 0,
                        selectedColor: const Color(0xFFEB3323),
                        labelStyle: TextStyle(
                          color: state.selected(choices[i])
                              ? Colors.white
                              : Colors.black,
                        ),
                        showCheckmark: false,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        backgroundColor: Colors.grey[200],
                        selected: state.selected(choices[i]),
                        onSelected: state.onSelected(choices[i]),
                        label: Text(
                          choices[i],
                        ),
                      );
                    },
                    listBuilder: ChoiceList.createScrollable(
                      clipBehavior: Clip.none,
                      spacing: 10,
                      runSpacing: 10,
                      padding: const EdgeInsets.symmetric(
                        vertical: 2,
                      ),
                    ),
                  ),
                ),
                const ListTile(
                  title: Text(
                    'Shubham Bane discusses how to get started with 100daysofcode challenge',
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ),
                ListTile(
                  title: RichText(
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: '00:00',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 6),
                        ),
                        TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean varius vestibulum volutpat. Pellentesque porttitor tortor purus, non bibendum mi elementum id. Phasellus nec aliquet enim. Duis non vulputate dolor, non vulputate mauris. Duis risus augue, lacinia vel volutpat quis, scelerisque in dui. Quisque enim augue, efficitur sit amet nisi vitae, pretium eleifend nibh. Ut at justo massa. Duis efficitur scelerisque dolor eget condimentum. Proin mollis risus non leo egestas convallis. Morbi gravida rutrum libero, eget placerat tellus pulvinar ac. Donec tristique orci est, nec rutrum leo sagittis at. Sed commodo a lacus eget bibendum. Nulla ultricies tempus arcu nec posuere. Nulla nibh felis, feugiat sed est et, tincidunt rhoncus ex.",
                        ),
                      ],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RichText(
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Expand',
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                ListTile(
                  title: RichText(
                    maxLines: 7,
                    overflow: TextOverflow.ellipsis,
                    text: const TextSpan(
                      style: TextStyle(
                        color: Colors.black38,
                        fontSize: 16,
                      ),
                      children: [
                        TextSpan(
                          text: '20:00',
                          style: TextStyle(
                            color: Colors.blue,
                          ),
                        ),
                        WidgetSpan(
                          child: SizedBox(width: 6),
                        ),
                        TextSpan(
                          text:
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Aenean varius vestibulum volutpat. Pellentesque porttitor tortor purus, non bibendum mi elementum id. Phasellus nec aliquet enim. Duis non vulputate dolor, non vulputate mauris. Duis risus augue, lacinia vel volutpat quis, scelerisque in dui. Quisque enim augue, efficitur sit amet nisi vitae, pretium eleifend nibh. Ut at justo massa. Duis efficitur scelerisque dolor eget condimentum. Proin mollis risus non leo egestas convallis. Morbi gravida rutrum libero, eget placerat tellus pulvinar ac. Donec tristique orci est, nec rutrum leo sagittis at. Sed commodo a lacus eget bibendum. Nulla ultricies tempus arcu nec posuere. Nulla nibh felis, feugiat sed est et, tincidunt rhoncus ex.",
                        ),
                      ],
                    ),
                  ),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 10.0),
                    child: RichText(
                      maxLines: 7,
                      overflow: TextOverflow.ellipsis,
                      text: const TextSpan(
                        style: TextStyle(
                          color: Colors.black26,
                          fontSize: 16,
                        ),
                        children: [
                          TextSpan(
                            text: 'Expand',
                          ),
                          WidgetSpan(
                            child: Padding(
                              padding: EdgeInsets.only(left: 4),
                              child: Icon(
                                Icons.keyboard_arrow_down,
                                size: 16,
                                color: Colors.black26,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class VideoProgressElement extends StatelessWidget {
  final double progress;
  final ValueChanged<double> onChanged;

  const VideoProgressElement({
    super.key,
    required this.progress,
    required this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Slider(
        value: progress,
        onChanged: onChanged,
        activeColor: const Color(0xFFEB3323),
        inactiveColor: Colors.grey.shade300,
      ),
    );
  }
}
