// import 'dart:async';
// import 'dart:typed_data';
//
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/foundation.dart';
// import 'package:image/image.dart';
//
// class _OurKey {
//   final Object providerCacheKey;
//   const _OurKey(this.providerCacheKey);
//   @override
//   bool operator ==(Object other) {
//     if (other.runtimeType != runtimeType) return false;
//     return other is _OurKey && other.providerCacheKey == providerCacheKey;
//   }
//
//   @override
//   int get hashCode => providerCacheKey.hashCode;
// }
//
// class OurImageProvider extends ImageProvider<_OurKey> {
//   final ImageProvider imageProvider;
//   const OurImageProvider(this.imageProvider);
//   @override
//   ImageStreamCompleter load(_OurKey key, decode) {
//     final ourDecoder = (
//       Uint8List bytes, {
//       bool allowUpscaling,
//       int cachWidth,
//       int cachHeight,
//     }) async {
//       return decode(
//         await whiteToAlpha(bytes),
//       );
//     };
//     return imageProvider.load(key.providerCacheKey, ourDecoder);
//   }
//
//   @override
//   Future<_OurKey> obtainKey(ImageConfiguration configuration) {
//     Completer<_OurKey> completer;
//     SynchronousFuture<_OurKey> result;
//     imageProvider.obtainKey(configuration).then((Object key) {
//       if (completer == null) {
//         result = SynchronousFuture<_OurKey>(_OurKey(key));
//       } else {
//         completer.complete(_OurKey(key));
//       }
//     });
//     if (result != null) {
//       return result;
//     }
//     completer = Completer<_OurKey>();
//     return completer.future;
//   }
// }
//
// Future<Uint8List> whiteToAlpha(Uint8List bytes) async {
//   final image = decodeImage(bytes);
//   final pixels = image.getBytes(format: Format.rgba);
//   final lenght = pixels.lengthInBytes;
//   for (var i = 0; i < lenght; i += 4) {
//     if (pixels[i] == 255 && pixels[i + 1] == 255 && pixels[i + 2] == 255) {
//       pixels[i + 3] = 0;
//     }
//   }
//   return encodePng(image);
// }
