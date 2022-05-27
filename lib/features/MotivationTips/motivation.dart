import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:thankfulness/App/core/enums.dart';
import 'package:thankfulness/features/MotivationTips/cubit/motivation_cubit.dart';
import 'package:thankfulness/features/MotivationTips/data_sources/motivation_data_source.dart';
import 'package:thankfulness/features/MotivationTips/model/motivation_model.dart';

import 'repositories/motivation_repository.dart';

class MotivationPage extends StatelessWidget {
  const MotivationPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider<MotivationCubit>(
        create: (context) {
          return MotivationCubit(
            motivationRepository: MotivationRepository(
              remoteDataSource: MotivationRemoteDioDataSource(),
            ),
          )..start();
        },
        child: BlocBuilder<MotivationCubit, MotivationState>(
          builder: (context, state) {
            switch (state.status) {
              case Status.initial:
                return const Center(
                  child: Text('Initial state'),
                );
              case Status.loading:
                return const Center(
                  child: CircularProgressIndicator(),
                );
              case Status.success:
                return ListView(
                  children: [
                    const Text(
                      'Odnajdź inspirację do wdzięczności, dzięki podpowiedziom:',
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: Color.fromARGB(255, 23, 213, 169),
                      ),
                      textAlign: TextAlign.center,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    for (final motivation in state.results)
                      MotivationItemWidget(
                        model: motivation,
                      ),
                  ],
                );
              case Status.error:
                return Center(
                  child: Text(state.errorMessage ?? 'Unknown error'),
                );
            }
          },
        ),
      ),
    );
  }
}

class MotivationItemWidget extends StatelessWidget {
  const MotivationItemWidget({Key? key, required this.model}) : super(key: key);
  final MotivationModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      padding: const EdgeInsets.all(40),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(15),
          bottomLeft: Radius.circular(10),
        ),
        boxShadow: [
          BoxShadow(
            color: Color.fromARGB(255, 23, 213, 169),
            offset: Offset(6, 6),
            blurRadius: 6,
          ),
        ],
      ),
      child: Expanded(
        child: Column(
          children: [
            Container(
              color: Colors.amber,
              child: Text(
                model.name,
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Text(
              model.contents,
              style: const TextStyle(fontSize: 20, color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
