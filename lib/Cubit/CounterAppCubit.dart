import 'package:basketballpoints/Cubit/CounterAppState.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class Counterappcubit extends Cubit<CounterState> {
  Counterappcubit() : super(CounterInitState());
  int teamA = 0;
  int teamB = 0;

  void increment(String team, int nPT) {
    switch (team.toUpperCase()) {
      case "A":
        teamA += nPT;
        emit(CounterIncreamentState());
        break;

      case "B":
        teamB += nPT;
        emit(CounterIncreamentState());
        break;

      default:
        print("Invalid team name");
    }
  }

  void rest(team1, team2) {
    teamA = 0;
    teamB = 0;
    emit(CounterDecreamentState());
  }
}
