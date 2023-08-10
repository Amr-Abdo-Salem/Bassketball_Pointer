import 'package:businesscard/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterTeamAIncremeantState());

  int counterA = 0;
  int counterB = 0;

  void TeamIncreamnt({
    required String team,
    required int buttonNumber,
  }) {
    if (team == 'A') {
      counterA += buttonNumber;
      emit(CounterTeamAIncremeantState());
    } else if (team == 'B') {
      counterB += buttonNumber;
      emit(CounterTeamBIncremeantState());
    } else {
      counterA = 0;
      counterB = 0;
      buttonNumber = 0;
      emit(ResetResult());
    }
  }
}
