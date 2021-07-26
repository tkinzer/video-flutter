import 'package:hmssdk_flutter/enum/hms_audio_codec.dart';

class HMSAudioSetting {
  final int bitRate;
  final HMSAudioCodec codec;

  HMSAudioSetting({required this.bitRate, required this.codec});

  factory HMSAudioSetting.fromMap(Map map) {
    return HMSAudioSetting(
        bitRate: map['bit_rate'],
        codec: HMSAudioCodecValues.getHMSCodecFromName(map['codec']));
  }
}
