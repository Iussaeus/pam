import 'dart:convert';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/models/wine.dart';
import 'package:untitled/presentation/bloc/events/wine.dart';
import 'package:untitled/presentation/bloc/state/states.dart';

class WineBloc extends Bloc<WineEvent, WineState> {
  WineBloc() : super(WineInitial()) {
    on<LoadWines>(_onLoadWines);
  }

  Future<void> _onLoadWines(LoadWines event, Emitter<WineState> emit) async {
    emit(WineLoading());
    try {
      // Simulate loading from JSON data
      const String data = '''
      [
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Penfolds Grange 2016",
          "image": "img_1.png",
          "critic_score": 98,
          "bottle_size": "750 ml",
          "price_usd": 850,
          "type": "red",
          "from": {
            "country": "Australia 🇦🇺",
            "city": "Barossa Valley"
          }
        },
        {
          "name": "Chateau Margaux 2015",
          "image": "img_2.png",
          "critic_score": 97,
          "bottle_size": "750 ml",
          "price_usd": 750,
          "type": "red",
          "from": {
            "country": "France 🇫🇷",
            "city": "Bordeaux"
          }
        }
      ]
      ''';

      final List parsed = jsonDecode(data);
      final wines = parsed.map((json) => Wine.fromJson(json)).toList();
      emit(WineLoaded(wines));
    } catch (e) {
      emit(WineError("Failed to load wines"));
    }
  }
}
