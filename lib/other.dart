import 'dart:async';
import 'dart:convert';
import 'dart:ffi';
import 'dart:io';
import 'dart:isolate';
import 'dart:typed_data';
import 'package:ffi/ffi.dart';
import 'package:flutter/foundation.dart';
import 'whisper4dart_bindings_generated.dart';
import 'package:whisper4dart/library.dart';

whisper_context_params createContextDefaultParams() {
  if (!WhisperLibrary.loaded) {
      if (!WhisperLibrary.flagFirst) {
        WhisperLibrary.init();
      } else {
        throw Exception('libwhisper is not loaded!');
      }
    }
  return WhisperLibrary.binding.whisper_context_default_params();
}

whisper_full_params createFullDefaultParams(int strategy) {
  if (!WhisperLibrary.loaded) {
      if (!WhisperLibrary.flagFirst) {
        WhisperLibrary.init();
      } else {
        throw Exception('libwhisper is not loaded!');
      }
    }
  return WhisperLibrary.binding.whisper_full_default_params(strategy);
}