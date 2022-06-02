import 'package:flutter/material.dart';

class TopNeuCard extends StatelessWidget {
  // final String balance;
  // final String income;
  // final String expense;

  // TopNeuCard({
  //   required this.balance,
  //   required this.expense,
  //   required this.income,
  // });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(4.0),
        child: Column(
          children: <Widget>[
            Container(
              height: 150,
              margin: const EdgeInsets.all(10.0),
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('T R A N S A C T I O N S',
                        style: TextStyle(color: Colors.black, fontSize: 25)),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10.0),
                    )
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.grey[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(4.0),
              // ignore: sort_child_properties_last
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Adele Chinda',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Processing',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 16)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('20000 NGN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('2036.66 RUB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(4.0),
              // ignore: sort_child_properties_last
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Adele Chinda',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Successful',
                                      style: TextStyle(
                                          color: Colors.green[200],
                                          fontSize: 16)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('20000 NGN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('2036.66 RUB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(4.0),
              // ignore: sort_child_properties_last
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Adele Chinda',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Failed',
                                      style: TextStyle(
                                          color: Colors.red, fontSize: 16)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('10000 NGN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('1018.33 RUB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.all(4.0),
              // ignore: sort_child_properties_last
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('Adele Chinda',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('Successful',
                                      style: TextStyle(
                                          color: Colors.green[200],
                                          fontSize: 16)),
                                ],
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const SizedBox(
                                width: 0,
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Text('20000 NGN',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20)),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  Text('2036.66 RUB',
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 14)),
                                ],
                              )
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.blue[300],
                  boxShadow: [
                    BoxShadow(
                        color: Colors.blue.shade500,
                        offset: Offset(4.0, 4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                    const BoxShadow(
                        color: Colors.white,
                        offset: Offset(-4.0, -4.0),
                        blurRadius: 15.0,
                        spreadRadius: 1.0),
                  ]),
            ),
          ],
        ));
  }
}
