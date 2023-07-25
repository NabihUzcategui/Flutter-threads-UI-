import 'package:flutter/material.dart';
import 'package:flutter_threads_ui/data/datasource.dart';
import 'package:flutter_threads_ui/utils/extensions.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Image.asset(
                  'assets/threads.png',
                  height: 35,
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildBuilderDelegate(
                childCount: ThreadRemoteDataSouerce().getThread().length,
                (context, index) {
                  final threadlist =
                      ThreadRemoteDataSouerce().getThread()[index];
                  return InkWell(
                    onTap: () {},
                    child: Stack(
                      alignment: AlignmentDirectional.bottomEnd,
                      children: [
                        Column(
                          children: [
                            ListTile(
                              leading: CircleAvatar(
                                backgroundImage: AssetImage(
                                    'assets/${threadlist.profileImage}'),
                              ),
                              title: Row(
                                children: [
                                  Text(
                                    threadlist.name ?? 'name',
                                    style: const TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                  const Spacer(),
                                  Text(
                                    threadlist.posted!,
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500,
                                    ),
                                  ),
                                  10.ph,
                                  const Icon(Icons.more_horiz)
                                ],
                              ),
                              subtitle: Text(
                                threadlist.description!,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Colors.black,
                                ),
                              ),
                            ),
                            if (threadlist.image != '')
                              Padding(
                                padding: const EdgeInsets.only(
                                  right: 20,
                                  left: 70,
                                ),
                                child: Container(
                                  height: 300,
                                  width: double.infinity,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(18),
                                    color: Colors.grey.shade200,
                                    image: DecorationImage(
                                        image: AssetImage(
                                          'assets/${threadlist.image}',
                                        ),
                                        fit: BoxFit.cover),
                                  ),
                                ),
                              ),
                            10.pv,
                            Padding(
                              padding: const EdgeInsets.only(
                                left: 70,
                              ),
                              child: Row(
                                children: [
                                  const Icon(Icons.favorite_border),
                                  10.ph,
                                  const Icon(Icons.chat_bubble_outline),
                                  10.ph,
                                  const Icon(Icons.cached),
                                  10.ph,
                                  const Icon(Icons.send),
                                ],
                              ),
                            ),
                            15.pv,
                            Container(
                              padding:
                                  const EdgeInsets.only(bottom: 10, left: 20),
                              alignment: Alignment.bottomLeft,
                              height: 30,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 70),
                                child: Text(
                                  '${threadlist.replies} replies . ${threadlist.likes} likes',
                                  style: TextStyle(
                                      fontSize: 14,
                                      color: Colors.grey.shade500,
                                      fontWeight: FontWeight.w500),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Positioned(
                          left: 35,
                          top: 63,
                          child: Container(
                            height: 400,
                            width: 3,
                            decoration: BoxDecoration(
                              color: Colors.grey.shade300,
                              borderRadius: BorderRadius.circular(1),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 330,
                          child: Container(
                            height: 35,
                            width: 35,
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(1)),
                            child: Stack(
                              children: [
                                Positioned(
                                  right: 0,
                                  child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                      'assets/${threadlist.replier}',
                                    ),
                                    radius: 9,
                                  ),
                                ),
                                // Positioned(
                                //   left: 0,
                                //   top: 10,
                                //   child: CircleAvatar(
                                //     backgroundImage: AssetImage(
                                //       'assets/${threadlist.replier1}',
                                //     ),
                                //     radius: 7,
                                //   ),
                                // ),
                                // Positioned(
                                //   bottom: 0,
                                //   right: 8,
                                //   child: CircleAvatar(
                                //     backgroundImage: AssetImage(
                                //       'assets/${threadlist.replier2}',
                                //     ),
                                //     radius: 6,
                                //   ),
                                // )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
