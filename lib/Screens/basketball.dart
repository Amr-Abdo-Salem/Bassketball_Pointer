import 'package:businesscard/Screens/result.dart';
import 'package:businesscard/cubit/counter_cubit.dart';
import 'package:businesscard/cubit/counter_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// ignore: must_be_immutable
class BasketballPointsCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CounterCubit, CounterState>(
      builder: ((context, state) {
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            backgroundColor: Colors.orange,
            title: const Text(
              'Points Counter',
              style: TextStyle(
                letterSpacing: 2,
                fontSize: 25,
                wordSpacing: 2,
              ),
            ),
          ),
          body: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                // crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 400,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          'Team A',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).counterA}',
                          style: TextStyle(
                            fontSize: 180,
                          ),
                        ),
                        //________________________________________
                        Container(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: Text(
                                'Add 1 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'A',
                                  buttonNumber: 1,
                                );
                              },
                            ),
                          ),
                        ),
                        //_____________________________________________
                        Container(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: Text(
                                'Add 2 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'A',
                                  buttonNumber: 2,
                                );
                              },
                            ),
                          ),
                        ),
                        //__________________________________________________
                        Container(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: Text(
                                'Add 3 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'A',
                                  buttonNumber: 3,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  //___________________________________________________________________
                  const SizedBox(
                    height: 400,
                    child: VerticalDivider(
                      indent: 20,
                      color: Colors.grey,
                      thickness: 2,
                      width: 5,
                    ),
                  ),
                  //_________________________Team B____________________________________
                  SizedBox(
                    height: 400,
                    child: Column(
                      // mainAxisAlignment: MainAxisAlignment.center,
                      // crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'Team B',
                          style: TextStyle(
                            fontSize: 35,
                          ),
                        ),
                        // SizedBox(
                        //   height: 5,
                        // ),
                        Text(
                          '${BlocProvider.of<CounterCubit>(context).counterB}',
                          style: const TextStyle(
                            fontSize: 180,
                          ),
                        ),
                        //________________________________________
                        SizedBox(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: const Text(
                                'Add 1 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'B',
                                  buttonNumber: 1,
                                );
                              },
                            ),
                          ),
                        ),
                        //_____________________________________________
                        Container(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: const Text(
                                'Add 2 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'B',
                                  buttonNumber: 2,
                                );
                              },
                            ),
                          ),
                        ),
                        //__________________________________________________
                        SizedBox(
                          height: 45,
                          width: 180,
                          child: Card(
                            color: Colors.orange,
                            elevation: 6,
                            child: TextButton(
                              child: const Text(
                                'Add 3 Point',
                                style: TextStyle(
                                    fontSize: 20, color: Colors.black),
                              ),
                              onPressed: () {
                                BlocProvider.of<CounterCubit>(context)
                                    .TeamIncreamnt(
                                  team: 'B',
                                  buttonNumber: 3,
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 100,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: Card(
                      elevation: 10,
                      color: Colors.orange,
                      child: TextButton(
                        child: const Text(
                          'Reset',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () {
                          BlocProvider.of<CounterCubit>(context).TeamIncreamnt(
                            team: 'C',
                            buttonNumber: 0,
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 70,
                    width: 200,
                    child: Card(
                      color: Colors.orange,
                      elevation: 6,
                      child: TextButton(
                        child: const Text(
                          'Result',
                          style: TextStyle(fontSize: 30, color: Colors.black),
                        ),
                        onPressed: () {
                          Navigator.of(context).pushReplacement(
                            MaterialPageRoute(
                              builder: (context) => ResultScreen(
                                counterA: BlocProvider.of<CounterCubit>(context)
                                    .counterA,
                                counterB: BlocProvider.of<CounterCubit>(context)
                                    .counterB,
                              ),
                            ),
                          );
                        },
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }),
      listener: (context, state) {},
    );
  }
}
