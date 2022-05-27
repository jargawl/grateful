import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:thankfulness/App/core/enums.dart';

import 'package:thankfulness/models/Widgets/motivationButton/cubit/motivationbutton_cubit.dart';
import 'package:thankfulness/repositories/motivation_repositories.dart';

class MotivationButton extends StatefulWidget {
  const MotivationButton({
    Key? key,
  }) : super(key: key);

  @override
  State<MotivationButton> createState() => _MotivationButtonState();
}

class _MotivationButtonState extends State<MotivationButton> {
  var names = false;
  var background = false;
  var colorStyle = false;
  bool myState = true;

  @override
  Widget build(BuildContext context) {
    final random = Random();
    final randomInt = random.nextInt(3);
    return InkWell(
      onTap: () {
        setState(
          () {
            names = true;
            background = true;
            colorStyle = true;
            myState = !myState;
          },
        );
      },
      child: Container(
        decoration: BoxDecoration(
          color: background
              ? const Color.fromARGB(255, 23, 213, 169)
              : Colors.yellow,
          borderRadius: const BorderRadius.all(
            Radius.circular(20),
          ),
        ),
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.all(10),
        child: BlocProvider(
          create: (context) => MotivationbuttonCubit(
            MotivationRepositories(),
          )..start(),
          child: BlocBuilder<MotivationbuttonCubit, MotivationbuttonState>(
            builder: (context, state) {
              if (state.status == Status.error) {
                final errorMessage =
                    state.errorMessage ?? 'Wystąpił nieoczekiwany problem ';
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(errorMessage),
                    backgroundColor: Colors.amber,
                  ),
                );
              }
              return Expanded(
                child: Column(
                  children: [
                    if (randomInt == 0)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Najwyższą nagrodą za trud człowieka nie jest to, co on dostaje za to, ale kim przez to się staje.\n\n- John Ruskin',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color:
                                    const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 1)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Ucz się z przeszłości, żyj dniem dzisiejszym, miej nadzieję na przyszłość. Ważną rzeczą jest, abyś nie przestał pytać.\n\n- Albert Einstein',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color:
                                    const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 2)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Pamiętaj, szczęście nie zależy od tego, kim jesteś, ani od tego, co masz, ono zależy wyłącznie od tego, co myślisz.\n\n- Dale Carnegie',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color:
                                    const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                  ],
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
