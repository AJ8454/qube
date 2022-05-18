import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late YoutubePlayerController controller;
  @override
  void initState() {
    const url = 'https://youtu.be/IODxDxX7oi4';
    controller = YoutubePlayerController(
      initialVideoId: YoutubePlayer.convertUrlToId(url)!,
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return YoutubePlayerBuilder(
        player: YoutubePlayer(
          controller: controller,
        ),
        builder: (context, player) {
          return Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              iconTheme: const IconThemeData(color: Colors.black),
              backgroundColor: Colors.transparent,
              elevation: 0.0,
              title: const Text(
                'Your Feeling History',
                style: TextStyle(color: Colors.black),
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text('Your feelling from last 30 days'),
                    const SizedBox(height: 10),
                    SizedBox(
                      height: 65,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '10%',
                              icon: Icons.emoji_emotions,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '40%',
                              icon: Icons.emoji_emotions,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '20%',
                              icon: Icons.emoji_emotions,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.pink,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.amber,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.red,
                            ),
                            const SizedBox(width: 10),
                            statusCard(
                              size,
                              title: '30%',
                              icon: Icons.emoji_emotions,
                              color: Colors.blue,
                            ),
                            const SizedBox(width: 10),
                          ],
                        ),
                      ),
                    ),
                    const Divider(),
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                          color: Colors.blue[100],
                          borderRadius:
                              const BorderRadius.all(Radius.circular(8))),
                      child: const Text(
                        '10 Jun, 2021',
                        style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    const SizedBox(height: 10),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        children: [
                          dateText(day: 'Mon', date: '20', isHigh: true),
                          const SizedBox(width: 25),
                          dateText(day: 'TUE', date: '21'),
                          const SizedBox(width: 25),
                          dateText(day: 'WED', date: '22'),
                          const SizedBox(width: 25),
                          dateText(day: 'THU', date: '23'),
                          const SizedBox(width: 25),
                          dateText(day: 'FRI', date: '24'),
                          const SizedBox(width: 25),
                          dateText(day: 'SAT', date: '25'),
                          const SizedBox(width: 25),
                          dateText(day: 'SUN', date: '26'),
                          const SizedBox(width: 25),
                          dateText(day: 'Mon', date: '27'),
                          const SizedBox(width: 25),
                          dateText(day: 'TUE', date: '28'),
                          const SizedBox(width: 25),
                          dateText(day: 'WED', date: '29'),
                          const SizedBox(width: 25),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    timeStatus(
                      title: '9 AM - 12PM',
                      status: 'Love',
                      color: Colors.yellow,
                    ),
                    const SizedBox(height: 10),
                    timeStatus(
                      title: '9 AM - 12PM',
                      status: 'Love',
                      color: Colors.pink,
                    ),
                    const SizedBox(height: 10),
                    timeStatus(
                      title: '9 AM - 12PM',
                      status: 'Love',
                      color: Colors.red,
                    ),
                    const SizedBox(height: 10),
                    const Divider(),
                    const SizedBox(height: 10),
                    const Text(
                      'You May Find This Interesting',
                      style: TextStyle(fontSize: 12, color: Colors.black),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit euismod risus elementum magna scelerisque nunc sed varius. Tellus quis tristique adipiscing sed metus, sit ac adipiscing. Leo aenean sed eu purus maecenas posuere',
                      style: TextStyle(fontSize: 12, color: Colors.grey),
                    ),
                    const SizedBox(height: 10),
                    SizedBox(height: 100, width: 300, child: player),
                    const SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          );
        });
  }

  Row timeStatus({
    String? title,
    String? status,
    Color? color,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title!,
          style: const TextStyle(fontSize: 12, color: Colors.black),
        ),
        const SizedBox(width: 20),
        RichText(
          text: TextSpan(
            children: [
              WidgetSpan(
                child: Icon(Icons.emoji_emotions, color: color, size: 14),
              ),
              TextSpan(
                text: " $status",
                style: const TextStyle(fontSize: 12, color: Colors.black),
              ),
            ],
          ),
        ),
        const Spacer(),
      ],
    );
  }

  Widget dateText({String? day, String? date, bool isHigh = false}) {
    return Container(
      height: 50,
      width: 30,
      decoration: BoxDecoration(
          color: isHigh ? Colors.grey[800] : Colors.white,
          borderRadius: const BorderRadius.all(Radius.circular(8))),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          day!,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w100,
            color: isHigh ? Colors.white : Colors.grey[500],
          ),
        ),
        Text(
          date!,
          style: TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.w300,
            color: isHigh ? Colors.white : Colors.grey[500],
          ),
        ),
      ]),
    );
  }

  Widget statusCard(
    Size size, {
    String? title,
    IconData? icon,
    Color? color,
  }) {
    return Stack(
      children: [
        Container(
          height: 60,
          width: size.width * 0.1,
          decoration: BoxDecoration(
            color: Colors.grey.shade100,
            boxShadow: const [
              BoxShadow(
                color: Colors.grey,
                blurRadius: 1.0,
              ),
            ],
            borderRadius: const BorderRadius.all(
              Radius.circular(30),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          child: Container(
            height: 30,
            width: size.width * 0.1,
            decoration: const BoxDecoration(
              color: Colors.greenAccent,
              boxShadow: [
                BoxShadow(
                  color: Colors.grey,
                  blurRadius: 3.0,
                ),
              ],
              shape: BoxShape.circle,
            ),
            child: Center(
                child: Icon(
              icon!,
              color: color,
            )),
          ),
        ),
        Positioned(
          top: 10.0,
          left: 5.0,
          child: Text(
            title!,
            style: const TextStyle(
              fontSize: 12,
              fontWeight: FontWeight.w100,
            ),
          ),
        )
      ],
    );
  }
}
