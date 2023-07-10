import 'package:flutter/material.dart';

class SecondBoardingPage extends StatefulWidget {
  SecondBoardingPage({super.key});

  @override
  State<SecondBoardingPage> createState() => _SecondBoardingPageState();
}

class _SecondBoardingPageState extends State<SecondBoardingPage> {
  final dupa = [
    'aaaaa',
    'bbbbbb1',
    'bbbbbb2',
    'bbbbbb3',
  ];

  final List<String> kupa = [];

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ColoredBox(
        color: Colors.blue,
        child: Column(
          children: [
            const Text(
              'Rejestracja',
              style: TextStyle(color: Colors.white, fontSize: 64),
            ),
            const Padding(
              padding: EdgeInsets.only(bottom: 16),
              child: Text(
                'Wybierz swoje ulubione gry!',
                style: TextStyle(color: Colors.white, fontSize: 31),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 128),
                child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    childAspectRatio: 3,
                    mainAxisSpacing: 10,
                    crossAxisSpacing: 10,
                  ),
                  itemCount: dupa.length,
                  itemBuilder: (context, index) {
                    return ColoredBox(
                      color: kupa.contains(dupa[index]) ? Colors.red : Colors.white60,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(8),
                            child: IconButton(icon: Icon(Icons.add),onPressed: (){
                              setState(() {
                                kupa.add(dupa[index]);
                              });
                            },),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(dupa[index]),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
