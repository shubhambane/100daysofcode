import '../entities/mood.dart';

abstract class MoodRepository {
  List<Mood> getMoods();
}
