import 'package:flutter/material.dart';
import 'package:whatsapp_ui_new/componants/channels_list.dart';
import 'package:whatsapp_ui_new/componants/hor_list_tile.dart';
import '../componants/app_bar.dart';


class UpdatesScreen extends StatefulWidget {
  const UpdatesScreen({super.key});

  @override
  State<UpdatesScreen> createState() => _UpdatesScreenState();
}

class _UpdatesScreenState extends State<UpdatesScreen> {
  final List<Map<String, String>> mylist = [
    {
      'image': 'lib/images/areeb.jpg',
      'text': 'Areeb'
    },
    {
      'image': 'lib/images/huzaifa.jpg',
      'text': 'Huzaifa'
    },
    {
      'image': 'lib/images/baba.jpg',
      'text': 'Baba'
    },
    {
      'image': 'lib/images/mama.jpg',
      'text': 'Mama'
    },
    {
      'image': 'lib/images/malinga.jpg',
      'text': 'Malinga'
    },
    {
      'image': 'lib/images/muneeb.jpg',
      'text': 'Muneeb'
    },
  ];

  final List<Map<String, String>> channels = [
    {
      'avatarUrl': 'lib/images/download.jpeg',
      'name': 'FIFA',
      'message': '5M Followers',
    },
    {
      'avatarUrl': 'lib/images/download.png',
      'name': 'PCB',
      'message': '1M Followers',
    },
    {
      'avatarUrl': 'lib/images/download (1).jpeg',
      'name': 'Imran Khan',
      'message': '1.2M Followers',
    },
    {
      'avatarUrl': 'lib/images/download (2).jpeg',
      'name': 'A Sports',
      'message': '340k Followers',
    },
    {
      'avatarUrl': 'lib/images/icc.jpeg',
      'name': 'ICC',
      'message': '4M Followers',
    },
    {
      'avatarUrl': 'lib/images/ary.jpeg',
      'name': 'ARY News',
      'message': '900k Followers',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: "Updates",
        actions: const [
          Icon(Icons.camera_alt_outlined, color: Colors.white),
          SizedBox(width: 15),
          Icon(Icons.search, color: Colors.white),
          SizedBox(width: 10),
          Icon(Icons.more_vert, color: Colors.white),
          SizedBox(width: 5),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(bottom: 10.0),
                    child: Text(
                      "Status",
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                  ),
                  SizedBox(
                    height: 100,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: mylist.length + 1, // +1 for the "Add Status" button
                      itemBuilder: (context, index) {
                        if (index == 0) {
                          return GestureDetector(
                            onTap: () {
                              // Handle adding new status
                            },
                            child: Container(
                              width: 70.0,
                              height: 70.0,
                              margin: const EdgeInsets.only(right: 10),
                              child: Stack(
                                children: [
                                  Container(
                                    width: 70.0,
                                    height: 70.0,
                                    decoration: const BoxDecoration(
                                      shape: BoxShape.circle,
                                    ),
                                    child:const Padding(
                                      padding:  EdgeInsets.all(3.0), // Adjust the padding as needed
                                      child: CircleAvatar(
                                        backgroundImage: AssetImage('lib/images/me.jpg'),
                                        radius: 30,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    right: 0,
                                    bottom: 30,

                                    child: Container(
                                        decoration: BoxDecoration(
                                          color: Colors.green,
                                          borderRadius: BorderRadius.circular(20)
                                        ),
                                        child: Icon(Icons.add, size: 20, color: Colors.black)),
                                  ),
                                ],
                              ),
                            ),
                          );
                        } else {
                          return HorListTile(
                            image: mylist[index - 1]['image']!, // Adjust index to account for "Add Status" button
                            text: mylist[index - 1]['text']!,
                          );
                        }
                      },
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text('Channels', style: TextStyle(color: Colors.white, fontSize: 20)),
                  ),
                ],
              ),
            ),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                  (context, index) {
                if (index == channels.length) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Divider(color: Colors.white10),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xff091016),
                            side: BorderSide(color: Colors.grey.shade800, width: 2),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                          ),
                          child: const Text(
                            "Explore More",
                            style: TextStyle(color: Colors.green), // Green text
                          ),
                        ),
                      ),
                    ],
                  );
                } else {
                  return ChannelsList(
                    avatarUrl: channels[index]['avatarUrl']!,
                    name: channels[index]['name']!,
                    message: channels[index]['message']!,
                    button: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff091016),
                        side: const BorderSide(color: Color(0xff83AB91), width: 2), // Green stroke
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                      ),
                      child: const Text(
                        "Follow",
                        style: TextStyle(color: Color(0xff83AB91)), // Green text
                      ),
                    ),
                  );
                }
              },
              childCount: channels.length + 1,
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Handle new call action
        },
        backgroundColor: Colors.green,
        child: const Icon(Icons.camera_enhance),
      ),
      backgroundColor: const Color(0xff091016),
    );
  }
}
