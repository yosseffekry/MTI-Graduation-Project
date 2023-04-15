import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';


part 'buttons_state.dart';

class ButtonsCubit extends Cubit<ButtonsState> {
  ButtonsCubit() : super(ButtonsInitial());
  static ButtonsCubit get(context)=> BlocProvider.of(context);
  
  bool value = false;
  void buttonClicked(){
    value = !value;
    emit(ButtonClickedState());
  }
  
}
