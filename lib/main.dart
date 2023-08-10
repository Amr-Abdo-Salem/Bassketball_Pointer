import 'package:businesscard/cubit/counter_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'Screens/basketball.dart';

void main() {
  runApp(BasketBallPointer());
}

class BasketBallPointer extends StatelessWidget {
  BasketBallPointer({super.key});
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CounterCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BasketballPointsCounter(),
      ),
    );
  }
}
