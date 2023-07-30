
import 'package:flutter/material.dart';

import '../widgets/appBar/app_bar.dart';
import '../widgets/image_picker.dart';
import '../widgets/post_space.dart';

class TopStories extends StatefulWidget {
  const TopStories({super.key});

  static const String id = 'topStories';

  @override
  State<TopStories> createState() => _TopStoriesState();
}

class _TopStoriesState extends State<TopStories> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
          children: [
            iconsOfTopBar(),
            const SizedBox(height: 8,),
            imagePicker(),
            const SizedBox(height: 13,),
            postsOfSpace(context),

          ],
      )
    );
  }
}
