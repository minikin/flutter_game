import 'package:audioplayers/audioplayers.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:flutter_game/loading/loading.dart';
import 'package:mocktail/mocktail.dart';

class MockPreloadCubit extends MockCubit<PreloadState> implements PreloadCubit {
}

class MockAudioCache extends Mock implements AudioCache {}
