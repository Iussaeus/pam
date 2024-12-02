import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/repos/bloc_data.dart';
import 'package:untitled/presentation/bloc/events/wine.dart';
import 'package:untitled/presentation/bloc/state/states.dart';

import 'wine_card.dart';

class WineListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => WineBloc()..add(LoadWines()),
      child: BlocBuilder<WineBloc, WineState>(
        builder: (context, state) {
          if (state is WineLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is WineLoaded) {
            return Expanded(
              child: ListView.builder(
                itemCount: state.wines.length,
                itemBuilder: (context, index) {
                  final wine = state.wines[index];
                  return WineCard(wine: wine);
                },
              ),
            );
          } else if (state is WineError) {
            return Center(child: Text(state.message));
          }
          return const Center(child: Text("Welcome to Wine Shop"));
        },
      ),
    );
  }
}
