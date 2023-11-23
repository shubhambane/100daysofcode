import '../../domain/entities/mood.dart';
import '../../domain/repositories/mood_repository.dart';

class MoodRepositoryImpl implements MoodRepository {
  @override
  List<Mood> getMoods() {
    return [
      Mood(title: "Happy", icon: "😄"),
      Mood(title: "Sad", icon: "😢"),
      Mood(title: "Angry", icon: "😡"),
      Mood(title: "Excited", icon: "🎉"),
      Mood(title: "Calm", icon: "😌"),
    ];
  }
}
