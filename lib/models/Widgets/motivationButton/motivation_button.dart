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
                                color: const Color.fromARGB(255, 23, 213, 169),
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
                                color: const Color.fromARGB(255, 23, 213, 169),
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
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 3)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Jeśli wierzysz w to, co robisz, niech nic nie powstrzyma cię w twojej pracy. Większość najlepszych prac świata powstała, kiedy innym wydawało się to niemożliwe.\n\n- Dale Carnegie',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 4)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Naucz się cieszyć każdą minutą swojego życia. Bądź szczęśliwy teraz. Nie czekaj, aż coś na zewnątrz uczyni cię szczęśliwym w przyszłości. Pomyśl, jak cenna jest ta chwila, którą masz spędzić, czy to w pracy, czy z twoją rodziną. Powinieneś cieszyć się i smakować każdą minutę.\n\n- Earl Nightingale',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 5)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Za dwadzieścia lat będziesz bardziej rozczarowany tym, czego nie zrobiłeś, niż tym, co zrobiłeś. Więc odwiąż liny, opuść bezpieczny port. Złap w żagle pomyślne wiatry. Badaj. Marz. Odkrywaj.\n\n- Mark Twain',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 6)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Ludzie często mówią, że motywacja nie trwa wiecznie. Kąpiel też nie – dlatego zalecana jest codziennie.\n\n- Zig Ziglar',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 7)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Ludzie stają się naprawdę wspaniali, kiedy zaczynają myśleć, że mogą zrobić wszystko. Kiedy uwierzą w siebie, to oznacza, że posiedli pierwszy sekret sukcesu.\n\n- Norman Vincent Peale',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 8)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Co najmniej trzy razy dziennie poświęć chwilę i odpowiedz sobie na pytanie, co tak naprawdę jest ważne. Miej mądrość i odwagę, aby budować swoje życie wokół swojej odpowiedzi.\n\n- Lee Jampolsky',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
                                fontSize: 23),
                      ),
                    if (randomInt == 9)
                      Text(
                        myState == true
                            ? 'Motywacyjny cytat od Miśka'
                            : 'Kończąc każdy dzień, skończ z nim na dobre. Zrobiłeś, co mogłeś, i szybko zapomnij o wszelkich gafach i absurdach, które się wkradły. Jutro jest nowy dzień, będziesz mógł go zacząć z nową energią i bez tych obciążających cię starych bzdur.\n\n- Ralph Waldo Emerson',
                        style: colorStyle
                            ? GoogleFonts.pacifico(
                                color: Colors.white,
                                fontSize: 23,
                              )
                            : GoogleFonts.pacifico(
                                color: const Color.fromARGB(255, 23, 213, 169),
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
