import 'package:flutter/material.dart';
import 'package:whatsapp_ui/story.dart';

class StoryTile extends StatelessWidget {
  const StoryTile({Key? key, @required this.story}) : super(key: key);

  final Story? story;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 120,
      height: 180,
      padding: EdgeInsets.zero,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.all(Radius.circular(20)),
            child: Image.network("${story!.content}"),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.all(12),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  CircleAvatar(
                    backgroundImage: NetworkImage("${story!.ownerPhoto}"),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Text(
                    "${story!.nameOwner}",
                    style: const TextStyle(fontWeight: FontWeight.w800),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
