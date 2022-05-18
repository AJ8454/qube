import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:qube/screens/detail_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Column(
              children: [
                const SizedBox(height: 5),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Icon(Icons.menu)),
                    const Spacer(),
                    Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                            color: Colors.white,
                            boxShadow: [
                              BoxShadow(
                                color: Colors.grey,
                                blurRadius: 5.0,
                              ),
                            ],
                            borderRadius:
                                BorderRadius.all(Radius.circular(30))),
                        child: const Icon(Icons.favorite)),
                    const SizedBox(width: 20),
                    Stack(
                      children: [
                        Container(
                          height: 40,
                          width: 40,
                          decoration: const BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey,
                                  blurRadius: 5.0,
                                ),
                              ],
                              borderRadius:
                                  BorderRadius.all(Radius.circular(30))),
                          child: const Icon(Icons.person),
                        ),
                        Positioned(
                          right: 3,
                          top: 3,
                          child: Container(
                            padding: const EdgeInsets.all(1),
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(6),
                            ),
                            constraints: const BoxConstraints(
                              minWidth: 15,
                              minHeight: 15,
                            ),
                            child: const Text(
                              '2',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 10,
                              ),
                              textAlign: TextAlign.center,
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(width: 20),
                    Container(
                      height: 40,
                      width: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey,
                            blurRadius: 5.0,
                          ),
                        ],
                        image: DecorationImage(
                          image: NetworkImage(
                              'https://image.shutterstock.com/image-photo/muscular-man-showing-muscles-on-260nw-1686329977.jpg'),
                          fit: BoxFit.fill,
                        ),
                        //   FittedBox(
                        //   child: Image.asset('assets/icons/snackicon.jpg'),
                        //   fit: BoxFit.fill,
                        // ),
                        borderRadius: BorderRadius.all(
                          Radius.circular(30),
                        ),
                      ),
                    ),
                    // child: Container(color: Colors.amber)),
                  ],
                ),
                const SizedBox(height: 40),
                Row(
                  children: [
                    Expanded(
                      flex: 3,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'Qube Health !!',
                            style: TextStyle(
                              color: Color(0xFF2c3D63),
                              fontSize: 18,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text('here is your dashboard....'),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.shade300,
                                  blurRadius: 18.0,
                                ),
                              ],
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(30))),
                          child: const Icon(Icons.search)),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      bannerBox(
                        size,
                        url:
                            'https://flyingcdn-942385.b-cdn.net/wp-content/uploads/2020/07/Workout-Routine-for-Men-banner.jpg',
                        title: 'Pushups',
                        onClicked: () => Get.to(() => const DetailScreen()),
                      ),
                      const SizedBox(width: 20),
                      bannerBox(
                        size,
                        url:
                            'https://blog-socal.goldsgym.com/hs-fs/hubfs/Blog_Images/weight%20loss%20workout%20plan%20for%20men%20main%20(1).jpg?width=669&height=447&name=weight%20loss%20workout%20plan%20for%20men%20main%20(1).jpg',
                        title: 'Cardio',
                        onClicked: () => Get.to(() => const DetailScreen()),
                      ),
                      const SizedBox(width: 20),
                      bannerBox(
                        size,
                        url:
                            'https://cdn.muscleandstrength.com/sites/default/files/field/feature-image/workout/allmaxcablefly800.jpg',
                        title: 'Chest',
                        onClicked: () => Get.to(() => const DetailScreen()),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'January, 23 2021',
                            style: TextStyle(
                                fontSize: 12, color: Color(0xFF2c3D63)),
                          ),
                          Text(
                            'Today',
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF2c3D63),
                            ),
                          )
                        ]),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // maximumSize: const Size(50, 30),
                        shape: const StadiumBorder(),
                        primary: Colors.white,
                        onSurface: const Color(0xFFA83242),
                      ),
                      onPressed: () {},
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'TIMELINE',
                            style: TextStyle(
                              fontSize: 12,
                              color: Color(0xFF2c3D63),
                            ),
                          ),
                          Icon(
                            Icons.arrow_drop_down,
                            color: Color(0xFF2c3D63),
                          ),
                        ],
                      ),
                    ),
                    ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        // maximumSize: const Size(50, 30),
                        shape: const StadiumBorder(),
                        primary: Colors.white,
                        onSurface: const Color(0xFFA83242),
                      ),
                      child: const Icon(
                        Icons.today_outlined,
                        size: 18,
                        color: Color(0xFF2c3D63),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      dateText(day: 'Mon', date: '20'),
                      const SizedBox(width: 25),
                      dateText(day: 'TUE', date: '21'),
                      const SizedBox(width: 25),
                      dateText(day: 'WED', date: '22'),
                      const SizedBox(width: 25),
                      dateText(day: 'THU', date: '23', isHigh: true),
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
                const SizedBox(height: 30),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget bannerBox(
    Size size, {
    String? url,
    String? title,
    VoidCallback? onClicked,
  }) {
    return InkWell(
      onTap: onClicked,
      child: Container(
        height: size.height * 0.4,
        width: size.width * 0.7,
        decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(url!),
              fit: BoxFit.fill,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(30))),
        child: Center(
          child: Text(
            title!,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }

  Column dateText({String? day, String? date, bool isHigh = false}) {
    return Column(children: [
      Text(
        day!,
        style: TextStyle(
          fontSize: 15,
          color: isHigh ? const Color(0xFF0F8181) : Colors.grey,
        ),
      ),
      Text(
        date!,
        style: TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
          color: isHigh ? const Color(0xFF0F8181) : const Color(0xFF2c3D63),
        ),
      ),
      Icon(
        Icons.circle,
        size: 8,
        color: isHigh ? const Color(0xFF0F8181) : Colors.white,
      ),
    ]);
  }
}
