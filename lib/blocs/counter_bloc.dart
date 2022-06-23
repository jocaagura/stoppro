import 'dart:async';

import '../entities/bloc_entity.dart';

class BlocCounter extends Bloc {


  late Timer _timer;

  BlocCounter(){
   _timer =  Timer.periodic(const Duration(milliseconds: 200), (timer) {
      decrementCounter();
    });
  }


   int _counter = 0;


   int get counter => _counter;
   set counter(int val){
     if(val > -99 && val <= 99){
       _counter = val;
     }
   }


   void stop(){
     if(_timer.isActive){
       _timer.cancel();
       _counter = 0;
     }
   }
   void start(){
     if(!_timer.isActive){
       _timer =  Timer.periodic(const Duration(milliseconds: 200), (timer) {
         decrementCounter();
       });
     }
   }


   void incrementCounter([int incremntValue = 1]){
     counter = counter + incremntValue;
   }
   void decrementCounter([int incremntValue = 1]){
     counter = counter - incremntValue;
   }


  @override
  void dispose() {
   _timer.cancel();
  }


}


final blocCounter = BlocCounter();
