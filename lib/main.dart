import 'package:basketballpoints/Cubit/CounterAppCubit.dart';
import 'package:basketballpoints/Cubit/CounterAppState.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(BasketAppcounter());
}

class BasketAppcounter extends StatelessWidget {
  const BasketAppcounter({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => Counterappcubit(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.orange,
          title: Text(
            "Points Counter",
            style: TextStyle(fontSize: 20, color: Colors.white),
          ),
        ),
        body: BlocConsumer<Counterappcubit, CounterState>(
          builder: (context, state) {
            var cubit = BlocProvider.of<Counterappcubit>(context);
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Text(
                          "TEAM A",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "${cubit.teamA}",
                          style: TextStyle(fontSize: 62),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("A", 1);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Text(
                              "Point 1",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("A", 2);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "Point 2",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("A", 3);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "Point 3",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ))
                      ],
                    ),
                    Container(
                      height: 250,
                      child: VerticalDivider(
                        thickness: 2,
                        color: Colors.grey[500],
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "TEAM B",
                          style: TextStyle(
                            fontSize: 30,
                            color: Colors.black,
                          ),
                        ),
                        Text(
                          "${cubit.teamB}",
                          style: TextStyle(fontSize: 62),
                        ),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("B", 1);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(8))),
                            child: Text(
                              "Point 1",
                              style:
                                  TextStyle(fontSize: 15, color: Colors.black),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("B", 2);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "Point 2",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            )),
                        ElevatedButton(
                            onPressed: () {
                              cubit.increment("B", 3);
                            },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.orange,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(8),
                                )),
                            child: Text(
                              "Point 3",
                              style: TextStyle(
                                fontSize: 15,
                                color: Colors.black,
                              ),
                            ))
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.orange),
                    onPressed: () {
                      cubit.rest("B", "A");
                    },
                    child: Text(
                      "RESET",
                      style: TextStyle(color: Colors.black),
                    ))
              ],
            );
          },
          listener: (BuildContext context, CounterState state) {},
        ),
      ),
    );
  }
}
