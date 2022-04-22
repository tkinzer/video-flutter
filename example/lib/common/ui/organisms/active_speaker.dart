import 'package:flutter/material.dart';
import 'package:hmssdk_flutter_example/meeting/meeting_store.dart';
import 'package:provider/provider.dart';

class ActiveSpeaker extends StatelessWidget {
  final double itemHeight, itemWidth;
  final String uid;
  const ActiveSpeaker(
      {Key? key,
      required this.itemHeight,
      required this.itemWidth,
      required this.uid})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Selector<MeetingStore, bool>(
        selector: (_, meetingStore) => meetingStore.isActiveSpeaker(uid),
        builder: (_, isActiveSpeaker, __) {
          return Container(
            decoration: BoxDecoration(
                border: Border.all(
                    color: isActiveSpeaker ? Colors.blue : Colors.grey,
                    width: isActiveSpeaker ? 2.0 : 1.0),
                borderRadius: BorderRadius.all(Radius.circular(10))),
          );
        });
  }
}
